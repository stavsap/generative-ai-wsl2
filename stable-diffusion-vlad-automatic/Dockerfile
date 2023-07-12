FROM nvidia/cuda:12.1.1-runtime-ubuntu22.04

RUN apt-get update
RUN apt-get upgrade -y

RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt install unzip git-lfs python3.10 python3.10-venv python3-pip git python3.10-tk ffmpeg libsm6 libxext6 libgl1 wget libcairo2-dev -y
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -yq install nvidia-cudnn
RUN apt install nvidia-cuda-toolkit -y

RUN useradd -s /bin/bash user
USER user
WORKDIR /home/user
