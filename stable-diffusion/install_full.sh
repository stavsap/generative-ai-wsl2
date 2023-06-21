sudo apt-get update
sudo apt-get upgrade -y
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install unzip git-lfs python3.10 python3.10-venv python3-pip git python3.10-tk ffmpeg libsm6 libxext6 libgl1 wget libcairo2-dev -y
sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install nvidia-cudnn
sudo apt install nvidia-cuda-toolkit -y

curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/install.sh | bash
