curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/run.sh > run.sh
chmod +x run.sh

curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/update.sh > update.sh
chmod +x update.sh

git clone https://github.com/vladmandic/automatic.git
cd automatic
./webui.sh
