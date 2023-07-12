FROM nvidia/cuda:12.1.1-runtime-ubuntu22.04

RUN apt-get update
RUN apt-get upgrade -y

RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa -y

RUN apt install python3.10 python3.10-venv python3-pip git ffmpeg libsm6 libxext6 libgl1 wget -y

RUN useradd -s /bin/bash user
USER user
WORKDIR /home/user
