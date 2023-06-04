sudo apt-get update && apt-get install -y software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt-get update \
    && apt-get install -y \ 
    git python3.10 python3-pip python3-opencv imagemagick ffmpeg
