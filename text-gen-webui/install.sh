curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/text-gen-webui/run.sh > run.sh
chmod +x run.sh

curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/text-gen-webui/update.sh > update.sh
chmod +x update.sh

git clone https://github.com/oobabooga/one-click-installers.git
cd one-click-installers
chmod +x start_linux.sh
./start_linux.sh
