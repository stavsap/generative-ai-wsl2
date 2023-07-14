# create conda for python=3.9.0
sudo apt install cmake -y
sudo apt-get install postgresql python3-dev -y
sudo apt-get install --reinstall libpq-dev -y

conda create -n autotrain python=3.9.0 -y
conda install cudatoolkit -y
conda install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia -y
conda install -c conda-forge hdbscan -y

pip install -U bitsandbytes
pip install -U git+https://github.com/huggingface/transformers.git
pip install -U git+https://github.com/huggingface/peft.git
pip install -U git+https://github.com/huggingface/accelerate.git
pip install datasets
pip install scipy

pip install psycopg2
pip install psycopg2-binary
pip install sentencepiece
pip install tiktoken

pip install autotrain-advanced
