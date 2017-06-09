#!/bin/bash

nvidia-docker-compose -f tensorbox-compose.yml -o nvidia-tensorbox-compose.yml build

nvidia-docker-compose -f tensorbox-compose.yml -o nvidia-tensorbox-compose.yml up