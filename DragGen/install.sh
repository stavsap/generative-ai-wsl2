echo "========================="
echo "Installing DragGAN!"
echo "========================="

git clone https://github.com/XingangPan/DragGAN.git
cd DragGAN
conda env create -f environment.yml
conda activate stylegan3
python -m pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
python -m pip install click numpy imgui glfw pyopengl gradio
pip install -r requirements.txt
python scripts/download_model.py
sh scripts/gui.sh
