curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/parseq/run.sh > run.sh
chmod +x run.sh

curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/parseq/update.sh > update.sh
chmod +x update.sh

git clone https://github.com/rewbs/sd-parseq.git
cd sd-parseq
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc
nvm install node
npm install
npm start
