#!/bin/bash

if which nvidia-docker-compose; then
    echo "Nvidia-docker-compose already installed"
    exit 0
fi

if ! docker volume ls | awk '{print $1}' | grep 'nvidia-docker'; then
    echo "Creating nvidia driver volume..."
	sudo nvidia-docker run --rm nvidia/cuda nvidia-smi
fi

pip install nvidia-docker-compose
