git clone https://github.com/imartinez/privateGPT.git
cd privateGPT
python3 -m venv venv
pip install -r requirements.txt
cd ..
mkdir models
cd models
wget https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin
wget https://huggingface.co/Pi3141/alpaca-native-7B-ggml/resolve/397e872bf4c83f4c642317a5bf65ce84a105786e/ggml-model-q4_0.bin
