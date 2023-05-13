curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/parseq/run.sh > run.sh
chmod +x run.sh

curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/parseq/update.sh > update.sh
chmod +x update.sh

git clone https://github.com/rewbs/sd-parseq.git
cd sd-parseq
npm install
npm start
