sudo apt-get update
sudo apt-get upgrade -y
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install python3.10 python3.10-venv python3-pip git python3.10-tk ffmpeg libsm6 libxext6 libgl1 wget -y
sudo apt install nvidia-cuda-toolkit -y


git clone https://github.com/ajay-sainy/Wav2Lip-GFPGAN.git
cd Wav2Lip-GFPGAN
python3 -m venv venv
source venv/bin/activate 
pip install gdown
pip install -r requirements.txt

cd .. 

wget 'https://www.adrianbulat.com/downloads/python-fan/s3fd-619a316812.pth' -O 's3fd.pth'
gdown https://drive.google.com/uc?id=1fQtBSYEyuai9MjBOF8j7zZ4oQ9W2N64q --output './checkpoints/'
