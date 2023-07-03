echo "========================="
echo "Installing Miniconda3!"
echo "========================="

curl -sL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" > "Miniconda3.sh"
bash Miniconda3.sh -b 

echo 'export CUDA_HOME=/home/$USER/miniconda3/envs/textgen/pkgs/cuda-toolkit/' >> .bashrc
echo 'export PATH="$PATH:/home/$USER/miniconda3/bin/"' >> .bashrc
echo 'export LD_LIBRARY_PATH="/usr/lib/wsl/lib:/home/$USER/miniconda3/lib/"' >> .bashrc

/home/$USER/miniconda3/bin/init bash

source .bashrc
nvidia-smi

conda create -n textgen python=3.10.9 -y
conda activate textgen
pip install bitsandbytes

echo "ALL DONE\n\n"
