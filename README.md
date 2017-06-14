# Docker for ML/DL
Template for machine learning and deep learning projects. 

## Requirements
* Nvidia graphics card with CUDA support <http://www.geforce.com/hardware/technology/cuda/>
* Nvidia driver <http://www.geforce.com/drivers>
* Docker <https://www.docker.com/get-docker>
* Docker Compose <https://docs.docker.com/compose/install/>
* Nvidia Modprobe `sudo apt-get install nvidia-modprobe`

## Installation
Run:
* [install-nvidia-docker.sh](https://github.com/SmartPeople/docker-ml/blob/master/scripts/install-nvidia-docker.sh)
* [install-nvidia-docker-compose.sh](https://github.com/SmartPeople/docker-ml/blob/master/scripts/install-nvidia-docker-compose.sh)


## Post-installation

Check `docker volume ls` and run `nvidia-docker run nvidia/cuda nvidia-smi` if driver volume is empty

---
## Base images

### 8.0-cudnn5-devel-ubuntu16.04

Tensorflow-gpu

* rlxs/tensorflow:0.12.1-gpu-py2
* rlxs/tensorflow:0.12.1-gpu-py3
* rlxs/tensorflow:1.1.0-gpu-py2
* rlxs/tensorflow:1.1.0-gpu-py3

OpenCV 3.2.0 with CUDA support + Tensorflow-gpu 1.1.0 + Python2.7/3.5

* rlxs/opencv-cuda-tf

OpenCV 2.4.9.1 + Tensorflow-gpu 1.1.0 + Python2.7 (Jupyter/matplotlib/numpy/scipy)

* rlxs/tf-cv2

Torch 0.1.12_2 + Python2.7

* rlxs/cuda-torch:py2

---

## Create images and test gpu support

Test GPU support in Tensorflow

[tensorflow_gpu_test.sh](https://github.com/iraelaxis/docker-ml/blob/master/tensorflow_gpu_test.sh)

---

Docker OpenCV GUI test and webcam access

[opencv_test.sh](https://github.com/SmartPeople/docker-ml/blob/master/opencv_test.sh)

---

Tensorbox <https://github.com/TensorBox/TensorBox>

* Run [Download data](https://github.com/SmartPeople/docker-ml/blob/master/images/tensorbox/code/download_data.sh) to download video datasets for training

* [Start tensorboard and tensorbox](https://github.com/SmartPeople/docker-ml/blob/master/images/tensorbox/code/start_all.sh)

* [Test tensorbox on own dataset](https://github.com/SmartPeople/docker-ml/blob/master/images/tensorbox/code/notebooks/my_video.ipynb)
---
