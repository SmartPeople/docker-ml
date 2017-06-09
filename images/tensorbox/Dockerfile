FROM rlxs/opencv-cuda-tf

RUN pip install --upgrade pip \
  && pip install --no-cache-dir jupyter runcython

RUN python2.7 -m pip install --no-cache-dir Pillow opencv-python scipy

ADD code ../code
WORKDIR ../code
RUN cd utils && make && cd ..

EXPOSE 6006
EXPOSE 8888
CMD ["/bin/bash"]