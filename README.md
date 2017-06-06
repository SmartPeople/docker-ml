# Docker for ML/DL

---

## Requirements

Nvidia graphics card with CUDA support <http://www.geforce.com/hardware/technology/cuda/>

Nvidia driver <http://www.geforce.com/drivers>

Docker <https://www.docker.com/get-docker>

Docker Compose <https://docs.docker.com/compose/install/>



---

## Installation

Nvidia Modprobe `sudo apt-get install nvidia-modprobe`

nvidia-docker-plugin running on localhost:3476 (shoud be auto)

Run:

[install-nvidia-docker.sh](https://github.com/SmartPeople/docker-ml/blob/master/scripts/install-nvidia-docker.sh)

[install-nvidia-docker-compose.sh](https://github.com/SmartPeople/docker-ml/blob/master/scripts/install-nvidia-docker-compose.sh)

---

## Post-installation

Check `docker volume ls` and run `nvidia-docker run nvidia/cuda nvidia-smi` if driver volume is empty

---
## Images

### 8.0-cudnn5-devel-ubuntu16.04

tensorflow 0.12.1-gpu-py3

---

## Create images and test gpu support

[tensorflow_gpu_test.sh](https://github.com/iraelaxis/docker-ml/blob/master/tensorflow_gpu_test.sh)
