curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/run.sh > run.sh
chmod +x run.sh

curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/update.sh > update.sh
chmod +x update.sh

git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
cd stable-diffusion-webui
python3 -m venv venv
source venv/bin/activate
python -m pip install xformers
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/install_extensions.sh | bash
cd /home/$USER
./run.sh
