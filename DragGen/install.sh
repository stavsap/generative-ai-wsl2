git clone https://github.com/XingangPan/DragGAN.git
cd DragGAN
conda env create -f environment.yml
conda activate stylegan3
pip install -r requirements.txt
pip install click
python scripts/download_model.py
sh scripts/gui.sh
