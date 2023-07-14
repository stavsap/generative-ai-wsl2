import locale
def getpreferredencoding(do_setlocale = True):
    return "UTF-8"
locale.getpreferredencoding = getpreferredencoding

from transformers import AutoTokenizer, AutoModelForCausalLM, BitsAndBytesConfig, pipeline
import transformers
import torch
from torch.utils.data import DataLoader, Dataset
import torch
from transformers import AutoTokenizer

model_id = "EleutherAI/gpt-neox-20b"
bnb_config = BitsAndBytesConfig(
    load_in_4bit=True,
    bnb_4bit_use_double_quant=True,
    bnb_4bit_quant_type="nf4",
    bnb_4bit_compute_dtype=torch.bfloat16
)

tokenizer = AutoTokenizer.from_pretrained(model_id)
tokenizer.pad_token = tokenizer.eos_token
model = AutoModelForCausalLM.from_pretrained(model_id, quantization_config=bnb_config, trust_remote_code=True)

from peft import prepare_model_for_kbit_training

model.gradient_checkpointing_enable()
model = prepare_model_for_kbit_training(model)

def print_trainable_parameters(model):
    """
    Prints the number of trainable parameters in the model.
    """
    trainable_params = 0
    all_param = 0
    for _, param in model.named_parameters():
        all_param += param.numel()
        if param.requires_grad:
            trainable_params += param.numel()
    print(
        f"trainable params: {trainable_params} || all params: {all_param} || trainable%: {100 * trainable_params / all_param}"
    )


from peft import LoraConfig, get_peft_model

config = LoraConfig(
    r=16,
    lora_alpha=32,
    target_modules=["query_key_value"],
    lora_dropout=0.05,
    bias="none",
    task_type="CAUSAL_LM"
)

model = get_peft_model(model, config)
print_trainable_parameters(model)


from datasets import load_dataset

data = load_dataset("truthful_qa", "generation")

tokenizer.pad_token = tokenizer.eos_token

# prompt_template = "### Instruction: {prompt}\n### Response:"

train_dataset = data['validation'].select(range(100)).map(lambda x: {"input_text": x['question']  + "\n" + x['best_answer']})

# Tokenize the datasets
train_encodings = tokenizer(train_dataset['input_text'], truncation=True, padding=True, max_length=256, return_tensors='pt')


class TextDataset(Dataset):
    def __init__(self, encodings):
        self.encodings = encodings

    def __getitem__(self, idx):
        item = {key: torch.tensor(val[idx]) for key, val in self.encodings.items()}
        item["labels"] = item["input_ids"].clone()
        return item

    def __len__(self):
        return len(self.encodings["input_ids"])


# Convert the encodings to PyTorch datasets
train_dataset = TextDataset(train_encodings)


def generate(index):

  example_text = data['validation'][index]['question']
  correct_answer = data['validation'][index]['best_answer']

  print("Question:")
  print(example_text)

  encoding = tokenizer(example_text, return_tensors="pt").to("cuda:0")
  output = model.generate(input_ids=encoding.input_ids, attention_mask=encoding.attention_mask, max_new_tokens=100, do_sample=True, temperature=0.000001, eos_token_id=tokenizer.eos_token_id, top_k = 0)

  print("Answer:")
  print(tokenizer.decode(output[0], skip_special_tokens=True))

  print("Best Answer:")
  print(correct_answer)

  print()


trainer = transformers.Trainer(
    model=model,
    train_dataset=train_dataset,
    # eval_dataset=val_dataset,
    args=transformers.TrainingArguments(
        num_train_epochs=30,
        per_device_train_batch_size=16,
        gradient_accumulation_steps=4,
        warmup_ratio=0.05,
        # max_steps=100,
        learning_rate=2e-4,
        fp16=True,
        logging_steps=1,
        output_dir="outputs",
        optim="paged_adamw_8bit",
        lr_scheduler_type='cosine',
    ),
    data_collator=transformers.DataCollatorForLanguageModeling(tokenizer, mlm=False),
)
model.config.use_cache = False  # silence the warnings. Please re-enable for inference!
trainer.train()
