curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/wsl/cuda_cudnn_base.sh | bash

echo "========================="
echo "Installing Miniconda3!"
echo "========================="

curl -sL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" > "Miniconda3.sh"
bash Miniconda3.sh -b 
