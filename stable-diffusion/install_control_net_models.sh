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
git clone https://huggingface.co/ioclab/control_v1p_sd15_brightness
cd control_v1p_sd15_brightness
mv diffusion_pytorch_model.safetensors /home/$USER/stable-diffusion-webui/models/ControlNet/control_v1p_sd15_brightness.safetensors
mv config.json /home/$USER/stable-diffusion-webui/models/ControlNet/control_v1p_sd15_brightness.json
cd ..
git clone https://huggingface.co/ioclab/control_v1u_sd15_illumination_webui
cd control_v1u_sd15_illumination_webui
mv illumination11000.safetensors /home/$USER/stable-diffusion-webui/models/ControlNet/control_v1u_sd15_illumination11000.safetensors
mv illumination15000.safetensors /home/$USER/stable-diffusion-webui/models/ControlNet/control_v1u_sd15_illumination15000.safetensors
mv illumination20000.safetensors /home/$USER/stable-diffusion-webui/models/ControlNet/control_v1u_sd15_illumination20000.safetensors
cp config.json /home/$USER/stable-diffusion-webui/models/ControlNet/control_v1u_sd15_illumination11000.json
cp config.json /home/$USER/stable-diffusion-webui/models/ControlNet/control_v1u_sd15_illumination15000.json
mv config.json /home/$USER/stable-diffusion-webui/models/ControlNet/control_v1u_sd15_illumination20000.json
cd ../..
rm -rf temp
echo "All Control Net Models Downloaded"
