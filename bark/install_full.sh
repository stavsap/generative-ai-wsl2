sudo apt-get update
sudo apt-get upgrade -y
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install python3.10 python3.10-venv python3-pip git python3.10-tk ffmpeg libsm6 libxext6 libgl1 wget -y
sudo apt install nvidia-cuda-toolkit -y

git clone https://github.com/suno-ai/bark
cd bark
python3 -m venv venv
source venv/bin/activate
pip install .
pip install IPython
cd ..
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/bark/test.py > test.py
python test.py
