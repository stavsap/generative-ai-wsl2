curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/compfyui/run.sh > run.sh
chmod +x run.sh

curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/compfyui/update.sh > update.sh
chmod +x update.sh

git lfs install
git clone https://github.com/comfyanonymous/ComfyUI.git
cd ComfyUI/custom_nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager.git
git clone https://github.com/LucianoCirino/efficiency-nodes-comfyui.git
git clone https://github.com/ssitu/ComfyUI_NestedNodeBuilder.git
git clone https://github.com/bmad4ever/ComfyUI-Bmad-DirtyUndoRedo.git
git clone https://github.com/ssitu/ComfyUI_UltimateSDUpscale.git --recursive
git clone https://github.com/evanspearman/ComfyMath.git
git clone https://github.com/marhensa/sdxl-recommended-res-calc.git
cd ../models/controlnet
git clone https://huggingface.co/stabilityai/control-lora
cd ../..
python3 -m venv venv
source venv/bin/activate
python -m pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu118 xformer
python -m pip install -r requirements.txt
cd ..
./run.sh
