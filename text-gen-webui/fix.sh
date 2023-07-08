cd /home/$USER/one-click-installers
CONDA_ROOT_PREFIX="$(pwd)/installer_files/conda"
INSTALL_ENV_DIR="$(pwd)/installer_files/env"
source "$CONDA_ROOT_PREFIX/etc/profile.d/conda.sh"
conda activate "$INSTALL_ENV_DIR"
pip install einops
pip install xformers
pip install bitsandbytes
conda install cudatoolkit -y
cd /home/$USER/one-click-installers/installer_files/env/lib/python3.10/site-packages/bitsandbytes
cp libbitsandbytes_cuda118.so libbitsandbytes_cpu.so
