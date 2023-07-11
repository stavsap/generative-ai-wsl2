echo ""
echo "========================="
echo "Installing Miniconda3!"
echo "========================="
echo ""

curl -sL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" > "Miniconda3.sh"
bash Miniconda3.sh -b 

echo 'export PATH="$PATH:/home/$USER/miniconda3/bin/"' >> .bashrc
echo 'export LD_LIBRARY_PATH="/usr/lib/wsl/lib:/home/$USER/miniconda3/lib/"' >> .bashrc

source .bashrc
conda init bash
source .bashrc
nvidia-smi
