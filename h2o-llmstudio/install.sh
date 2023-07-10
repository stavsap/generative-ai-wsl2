curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/h2o-llmstudio/run.sh > run.sh
chmod +x run.sh

curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/h2o-llmstudio/update.sh > update.sh
chmod +x update.sh

git clone https://github.com/h2oai/h2o-llmstudio.git
cd h2o-llmstudio
make setup
