#!/bin/bash

if which nvidia-docker-compose; then
    echo "Nvidia-docker-compose already installed"
    exit 0
fi

pip install nvidia-docker-compose
