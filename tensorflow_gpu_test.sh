#!/bin/bash

if ! which nvidia-docker; then
    echo "Install nvidia-docker first"
    echo "./scripts/install-nvidia-docker.sh"
    exit 0
fi

if ! which nvidia-docker-compose; then
    echo "Install nvidia-docker-compose first"
    echo "./scripts/install-nvidia-docker-compose.sh"
    exit 0
fi

nvidia-docker-compose -f tensorflow-compose.yml -o nvidia-tensorflow-compose.yml build

nvidia-docker-compose -f tensorflow-compose.yml -o nvidia-tensorflow-compose.yml up
