#!/bin/bash

#tensorboard --logdir output \
#& python -u train.py --hypes hypes/overfeat_rezoom.json --gpu 0 --logdir output & \
jupyter notebook --ip=0.0.0.0 --allow-root --port=8888 --no-browser --NotebookApp.iopub_data_rate_limit=536870912