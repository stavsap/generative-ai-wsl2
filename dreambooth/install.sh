git clone https://github.com/bmaltais/kohya_ss
cd kohya_ss
./setup.sh -v
source venv/bin/activate
pip install bitsandbytes-cuda117
pip install xformers
./gui.sh
