curl https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/privategpt/run.sh > run.sh
chmod +x run.sh

git clone https://github.com/imartinez/privateGPT.git
cd privateGPT
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
cd ..
mkdir models
cd models
wget https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin
wget https://huggingface.co/TheBloke/GPT4All-13B-snoozy-GGML/resolve/main/GPT4All-13B-snoozy.ggmlv3.q4_0.bin
cd ..
touch privateGPT/.env
echo "PERSIST_DIRECTORY=db" >> privateGPT/.env
echo "LLAMA_EMBEDDINGS_MODEL=all-MiniLM-L6-v2" >> privateGPT/.env
echo "MODEL_TYPE=GPT4All" >> privateGPT/.env
echo "MODEL_PATH=$PWD/models/ggml-gpt4all-j-v1.3-groovy.bin"  >> privateGPT/.env
echo "MODEL_N_CTX=1000" >> privateGPT/.env
echo "TARGET_SOURCE_CHUNKS=4" >> privateGPT/.env

