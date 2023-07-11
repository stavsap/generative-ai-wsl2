curl -sL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" > "Miniconda3.sh"
bash Miniconda3.sh -b 

echo 'export CUDA_HOME=/home/$USER/miniconda3/envs/textgen/pkgs/cuda-toolkit/' >> .bashrc
echo 'export PATH="$PATH:/home/$USER/miniconda3/bin/"' >> .bashrc
echo 'export LD_LIBRARY_PATH="/usr/lib/wsl/lib:/home/$USER/miniconda3/lib/"' >> .bashrc

source .bashrc
conda init bash
source .bashrc
nvidia-smi

conda create -n textgen python=3.10.9 -y
conda activate textgen
git clone https://github.com/oobabooga/text-generation-webui
cd text-generation-webui
python -m pip install -r requirements.txt
python -m pip install bitsandbytes
conda install cudatoolkit -y
python server.py
