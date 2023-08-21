curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/wsl/cuda_cudnn_base.sh | bash

curl -sL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" > "Miniconda3.sh"
bash Miniconda3.sh -b 

echo 'export PATH="$PATH:/home/$USER/miniconda3/bin/"' >> .bashrc
echo 'export LD_LIBRARY_PATH="/usr/lib/wsl/lib:/home/$USER/miniconda3/lib/"' >> .bashrc

source .bashrc 
conda init bash
source .bashrc
nvidia-smi

git clone https://github.com/lllyasviel/Fooocus.git
cd Fooocus
conda env create -f environment.yaml
conda activate fooocus
pip install -r requirements_versions.txt
