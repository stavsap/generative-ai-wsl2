curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/Tortoise-TTS-Fast/run.sh > run.sh
chmod +x run.sh

curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/Tortoise-TTS-Fast/update.sh > update.sh
chmod +x update.sh

git clone https://github.com/thisserand/tortoise-tts-fast.git
cd tortoise-tts-fast
python3 -m venv venv
source venv/bin/activate
pip install -e .
pip install git+https://github.com/152334H/BigVGAN.git
pip install streamlit
python -m streamlit run scripts/app.py
