# soft links to models, embeddings etc.
rm -rf /home/stav/ComfyUI/models/checkpoints

ln -s /mnt/g/WSL/SharedAssets/sd-checkpoints /home/$USER/ComfyUI/models/checkpoints
