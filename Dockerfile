FROM nvidia/cuda:11.2.2-devel-ubuntu20.04

WORKDIR /app

RUN apt update -y && apt install -y cmake g++ wget unzip git

ARG OPENCV_VERSION=4.5.4

RUN cd /root && \
    git clone https://github.com/opencv/opencv.git && \
    cd opencv/ && \
    git checkout ${OPENCV_VERSION} && \
    mkdir build/ && \
    cd build/ && \
    cmake .. && \
    make -j$(nproc) && \
    rm -rf /root/opencv/


CMD [ "sleep", "infinity" ]
