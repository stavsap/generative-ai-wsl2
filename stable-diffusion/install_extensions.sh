cd /home/$USER/stable-diffusion-webui/extensions
git clone https://github.com/OpenTalker/SadTalker.git
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/install_sad_talker_extension.sh | bash
git clone https://github.com/Mikubill/sd-webui-controlnet.git
mkdir /home/$USER/stable-diffusion-webui/models/ControlNet
