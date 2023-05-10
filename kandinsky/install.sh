curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/kandinsky/run.sh > run.sh
chmod +x run.sh

curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/kandinsky/update.sh > update.sh
chmod +x update.sh

git clone https://github.com/seruva19/kubin
cd kubin
python3 -m venv venv 
source venv/bin/activate 
pip install -r requirements.txt
python src/kubin.py
