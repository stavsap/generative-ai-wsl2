sudo apt-get update
sudo apt-get upgrade -y
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install python3.10 python3.10-venv python3-pip git python3.10-tk ffmpeg libsm6 libxext6 libgl1 wget -y
sudo apt install nvidia-cuda-toolkit -y

git clone https://github.com/seruva19/kubin
cd kubin
python3 -m venv venv 
source venv/bin/activate 
pip install -r requirements.txt
python src/kubin.py
