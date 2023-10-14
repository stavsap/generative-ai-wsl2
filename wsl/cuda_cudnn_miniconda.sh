sudo apt-get update
sudo apt-get upgrade -y
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install unzip git-lfs python3.10 python3.10-venv python3-pip git python3.10-tk ffmpeg libsm6 libxext6 libgl1 wget libcairo2-dev -y
sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install nvidia-cudnn
sudo apt install nvidia-cuda-toolkit -y
nvidia-smi

curl -sL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" > "Miniconda3.sh"
bash Miniconda3.sh -b 

echo 'export CUDA_HOME=/home/$USER/miniconda3/envs/textgen/pkgs/cuda-toolkit/' >> .bashrc
echo 'export PATH="$PATH:/home/$USER/miniconda3/bin/"' >> .bashrc
echo 'export LD_LIBRARY_PATH="/usr/lib/wsl/lib:/home/$USER/miniconda3/lib/"' >> .bashrc

source .bashrc
/home/$USER/miniconda3/bin/conda init bash
