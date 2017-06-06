#!/bin/bash

if which nvidia-docker; then
    echo "Nvidia-docker already installed"
    exit 0
fi

wget -P /tmp https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.1/nvidia-docker_1.0.1_amd64.tar.xz
sudo tar --strip-components=1 -C /usr/bin -xvf /tmp/nvidia-docker*.tar.xz && rm /tmp/nvidia-docker*.tar.xz

# Run nvidia-docker-plugin
sudo -b nohup nvidia-docker-plugin > /tmp/nvidia-docker.log

sudo systemctl start nvidia-docker
sudo systemctl enable nvidia-docker

# Create driver volume
sudo nvidia-docker run nvidia/cuda nvidia-smi
