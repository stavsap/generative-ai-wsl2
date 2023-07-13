conda install cudatoolkit -y
conda install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia -y
pip install -U bitsandbytes -y
pip install -U git+https://github.com/huggingface/transformers.git -y
pip install -U git+https://github.com/huggingface/peft.git -y
pip install -U git+https://github.com/huggingface/accelerate.git -y
pip install datasets -y
pip install scipy -y

sudo apt install cmake -y

sudo apt-get install postgresql python3-dev -y
sudo apt-get install --reinstall libpq-dev -y
pip install psycopg2 -y
pip install psycopg2-binary -y
pip install sentencepiece -y
conda install -c conda-forge hdbscan -y

sudo apt-get install --reinstall libpq-dev -y

pip install autotrain-advanced
