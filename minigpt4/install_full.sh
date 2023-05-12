wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin
sudo mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/12.1.1/local_installers/cuda-repo-wsl-ubuntu-12-1-local_12.1.1-1_amd64.deb
sudo dpkg -i cuda-repo-wsl-ubuntu-12-1-local_12.1.1-1_amd64.deb
sudo cp /var/cuda-repo-wsl-ubuntu-12-1-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install cuda -y
sudo apt install build-essential -y

sudo wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin 
sudo mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/3bf863cc.pub
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/ /" -y
sudo apt-get update
sudo apt-get install libcudnn8=8.9.1.*-1+cuda12.1 libcudnn8-dev=8.9.1.*-1+cuda12.1 libcudnn8-samples=8.9.1.*-1+cuda12.1 -y

echo "Installing Miniconda3!"

curl -sL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" > "Miniconda3.sh"
bash Miniconda3.sh -b 

echo 'export CUDA_HOME=/home/$USER/miniconda3/envs/textgen/pkgs/cuda-toolkit/' >> .bashrc
echo 'export PATH="$PATH:/home/$USER/miniconda3/bin/"' >> .bashrc
echo 'export LD_LIBRARY_PATH="/usr/lib/wsl/lib:/home/$USER/miniconda3/lib/"' >> .bashrc

/home/$USER/miniconda3/bin/conda init bash

nvidia-smi

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
source /home/$USER/miniconda3/etc/profile.d/conda.sh # otherwise conda complains about 'shell not initialized' (needed when running in a script)
conda activate minigpt4

python demo.py --cfg-path eval_configs/minigpt4_eval.yaml --gpu-id 0



