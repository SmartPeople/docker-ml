#!/bin/bash
nvidia-docker-compose -f opencv-compose.yml -o nvidia-opencv-compose.yml build
case "$1" in
    'img') nvidia-docker-compose -f opencv-compose.yml up opencv_test_img ;;
	'webcam') nvidia-docker-compose -f opencv-compose.yml up opencv_test_webcam ;;
    *) echo $'\n
    OpenCV docker test

    Run:
    ./opencv_test img
    ./opencv_test webcam' ;;
esac