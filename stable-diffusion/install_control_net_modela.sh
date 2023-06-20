mkdir temp
cd temp
git clone https://huggingface.co/lllyasviel/ControlNet-v1-1
cd ControlNet-v1-1
mv *.pth ../../stable-diffusion-webui/models/ControlNet/
mv *.yaml ../../stable-diffusion-webui/models/ControlNet/
cd ..
git clone https://huggingface.co/TencentARC/T2I-Adapter
cd T2I-Adapter/models
mv *.pth ../../../stable-diffusion-webui/models/ControlNet/
cd ../..
git clone https://huggingface.co/ioclab/control_v1p_sd15_brightness
cd control_v1p_sd15_brightness
mv diffusion_pytorch_model.safetensors ../../stable-diffusion-webui/models/ControlNet/control_v1p_sd15_brightness.safetensors
mv config.json ../../stable-diffusion-webui/models/ControlNet/control_v1p_sd15_brightness.json
cd ../..
rm -rf temp
