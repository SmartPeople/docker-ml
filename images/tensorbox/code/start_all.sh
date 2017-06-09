#!/bin/bash

tensorboard --logdir output \
& python -u train.py --hypes hypes/overfeat_rezoom.json --gpu 0 --logdir output