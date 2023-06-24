mkdir /home/$USER/stable-diffusion-webui/models/ModelScope/t2v
cd /home/$USER/stable-diffusion-webui/models/ModelScope
git lfs install
git clone https://huggingface.co/damo-vilab/modelscope-damo-text-to-video-synthesis
cd modelscope-damo-text-to-video-synthesis 
mv * ../t2v/
cd ..
rm -rf modelscope-damo-text-to-video-synthesis
