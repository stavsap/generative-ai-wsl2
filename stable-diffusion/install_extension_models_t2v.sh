mkdir /home/$USER/stable-diffusion-webui/models/ModelScope
cd /home/$USER/stable-diffusion-webui/models/ModelScope
git lfs install
git clone https://huggingface.co/damo-vilab/modelscope-damo-text-to-video-synthesis
mv modelscope-damo-text-to-video-synthesis/ t2v/
