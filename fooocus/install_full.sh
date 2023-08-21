curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/wsl/cuda_cudnn_base.sh | bash
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/wsl/install_mini_conda.sh | bash

git clone https://github.com/lllyasviel/Fooocus.git
cd Fooocus
conda env create -f environment.yaml
conda activate fooocus
pip install -r requirements_versions.txt
