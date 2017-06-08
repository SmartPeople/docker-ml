FROM rlxs/opencv-cuda-tf

RUN python2.7 -m pip install --no-cache-dir Pillow opencv-python scipy
RUN pip install --no-cache-dir ipython runcython
ADD code ../code
WORKDIR ../code
RUN cd utils && make && cd ..
CMD ["/bin/bash"]
#CMD ["python train.py --hypes hypes/overfeat_rezoom.json --gpu 0 --logdir output"]