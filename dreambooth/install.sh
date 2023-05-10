curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/dreambooth/run.sh > run.sh
chmod +x run.sh

curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/dreambooth/update.sh > update.sh
chmod +x update.sh

git clone https://github.com/bmaltais/kohya_ss
cd kohya_ss
./setup.sh -v
source venv/bin/activate
pip install bitsandbytes-cuda117
pip install xformers
./gui.sh
