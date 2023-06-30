curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/wsl/cuda_cudnn_base.sh | bash
python3 -m pip install jupyterlab
curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/jupiter/run.sh > run.sh
chmod +x run.sh

