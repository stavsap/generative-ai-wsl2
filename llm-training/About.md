# LLM Fine Tuning

[The Novice's LLM Training Guide](https://rentry.org/llm-training#native-fine-tuning)


## Qlora autotrain 

autotrain llm --train --project_name output --model Salesforce/xgen-7b-8k-base --data_path data --use_peft  --use_int4 --trainer sft --learning_rate 2e-4
