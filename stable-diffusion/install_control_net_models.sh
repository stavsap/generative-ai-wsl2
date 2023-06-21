rm -rf /home/$USER/temp
mkdir /home/$USER/temp
cd /home/$USER/temp
git clone https://huggingface.co/lllyasviel/ControlNet-v1-1
cd ControlNet-v1-1
mv *.pth /home/$USER/stable-diffusion-webui/models/ControlNet/
mv *.yaml /home/$USER/stable-diffusion-webui/models/ControlNet/
cd ..
git clone https://huggingface.co/TencentARC/T2I-Adapter
cd T2I-Adapter/models
mv *.pth /home/$USER/stable-diffusion-webui/models/ControlNet/
cd ../..
cd /home/$USER/stable-diffusion-webui/models/ControlNet/
wget https://huggingface.co/ioclab/ioc-controlnet/resolve/main/models/control_v1p_sd15_brightness.safetensors
wget https://huggingface.co/ioclab/ioc-controlnet/resolve/main/models/control_v1p_sd15_illumination.safetensors
cd /home/$USER
rm -rf /home/$USER/temp
echo "All Control Net Models Downloaded"
