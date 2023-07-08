cd /home/$USER/one-click-installers
CONDA_ROOT_PREFIX="$(pwd)/installer_files/conda"
INSTALL_ENV_DIR="$(pwd)/installer_files/env"
source "$CONDA_ROOT_PREFIX/etc/profile.d/conda.sh"
conda activate "$INSTALL_ENV_DIR"
pip install einops
pip install xformers
pip install bitsandbytes
conda install cudatoolkit -y
cd ..
