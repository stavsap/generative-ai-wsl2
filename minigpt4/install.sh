nvidia-smi

curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/minigpt4/run.sh > run.sh
chmod +x run.sh

curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/minigpt4/update.sh > update.sh
chmod +x update.sh

echo "Installing MiniGPT4!"

git clone https://github.com/Vision-CAIR/MiniGPT-4.git
cd MiniGPT-4/

# if you run 13B , Plaease Download Checkpoint Aligned with Vicuna 13B
#wget https://huggingface.co/wangrongsheng/MiniGPT4/blob/main/pretrained_minigpt4.pth

# if you run 7B , Plaease Download Checkpoint Aligned with Vicuna 7B
wget https://huggingface.co/wangrongsheng/MiniGPT4-7B/resolve/main/prerained_minigpt4_7b.pth

sed -i 's,llama_model: \"/path/to/vicuna/weights/\",llama_model: \"wangrongsheng/MiniGPT-4-LLaMA-7B\",' minigpt4/configs/models/minigpt4.yaml
sed -i 's,/path/to/pretrained/ckpt/,prerained_minigpt4_7b.pth,' eval_configs/minigpt4_eval.yaml

conda env create -f environment.yml
conda activate minigpt4

python demo.py --cfg-path eval_configs/minigpt4_eval.yaml --gpu-id 0
