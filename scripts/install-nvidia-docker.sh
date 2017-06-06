#!/bin/bash

if which nvidia-docker; then
	echo "Nvidia-docker is already installed on this machine"
	if systemctl show --property ActiveState docker | grep -q 'ActiveState=active'; then
		if ! docker volume ls | awk '{print $1}' | grep -q 'nvidia-docker'; then
	    	echo "Nvidia driver volume not found. Creating..."
			sudo nvidia-docker run --rm nvidia/cuda nvidia-smi
			echo "Check [docker volume ls]"
		else
			echo "Nvidia-docker and driver volume is ready"
		fi
	else
		echo "Cannot check volumes. Docker service is not running, start docker first"
	fi
    exit 0
fi

echo "Downloading nvidia-docker..."

wget -P /tmp https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.1/nvidia-docker_1.0.1_amd64.tar.xz
sudo tar --strip-components=1 -C /usr/bin -xvf /tmp/nvidia-docker*.tar.xz && rm /tmp/nvidia-docker*.tar.xz

# Run nvidia-docker-plugin
sudo -b nohup nvidia-docker-plugin > /tmp/nvidia-docker.log

sudo systemctl start nvidia-docker
sudo systemctl enable nvidia-docker

if ! docker volume ls | awk '{print $1}' | grep -q 'nvidia-docker'; then
    echo "Creating nvidia driver volume..."
	sudo nvidia-docker run --rm nvidia/cuda nvidia-smi
fi
