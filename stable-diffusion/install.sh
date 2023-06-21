curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/run.sh > run.sh
chmod +x run.sh

curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/update.sh > update.sh
chmod +x update.sh

git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
./run.sh
