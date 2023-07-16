# soft links to models, embeddings etc.
rm -rf /home/$USER/automatic/models/Stable-diffusion
rm -rf /home/$USER/automatic/outputs
rm -rf /home/$USER/automatic/embeddings
rm -rf /home/$USER/automatic/models/Lora
rm -rf /home/$USER/automatic/models/VAE

ln -s /mnt/g/WSL/SharedAssets/sd-checkpoints /home/$USER/automatic/models/Stable-diffusion
ln -s /mnt/g/Generative-AI/SharedOutputs/StableDiffusionVlad /home/$USER/automatic/outputs
ln -s /mnt/g/WSL/SharedAssets/sd-embeddings /home/$USER/automatic/embeddings
ln -s /mnt/g/WSL/SharedAssets/sd-lora /home/$USER/automatic/models/Lora
 ln -s /mnt/g/WSL/SharedAssets/sd-VAE /home/$USER/automatic/models/VAE
