curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/wsl/cuda_cudnn_base.sh | bash

echo "========================="
echo "Installing Miniconda3!"
echo "========================="

curl -sL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" > "Miniconda3.sh"
bash Miniconda3.sh -b 

echo 'export CUDA_HOME=/home/$USER/miniconda3/envs/textgen/pkgs/cuda-toolkit/' >> .bashrc
echo 'export PATH="$PATH:/home/$USER/miniconda3/bin/"' >> .bashrc
echo 'export LD_LIBRARY_PATH="/usr/lib/wsl/lib:/home/$USER/miniconda3/lib/"' >> .bashrc
source .bashrc
conda init bash
source .bashrc
nvidia-smi
