echo "========================="
echo "Installing DragGAN!"
echo "========================="

git clone https://github.com/XingangPan/DragGAN.git
cd DragGAN
sudo apt install gcc-10 g++-10
export CC=/usr/bin/gcc-10
export CXX=/usr/bin/g++-10
export CUDA_ROOT=/usr/local/cuda
python -m pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
python -m pip install click numpy imgui glfw pyopengl gradio ninja
pip install -r requirements.txt
python scripts/download_model.py
sh scripts/gui.sh
