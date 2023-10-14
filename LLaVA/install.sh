curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/LLaVA/run.sh > run.sh
chmod +x run.sh

curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/LLaVA/update.sh > update.sh
chmod +x update.sh

git clone https://github.com/haotian-liu/LLaVA.git
cd LLaVA
conda create -n llava python=3.10 -y
conda activate llava
pip install --upgrade pip  # enable PEP 660 support
pip install -e .
