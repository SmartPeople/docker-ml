FROM rlxs/tf-cv2

RUN pip install --upgrade pip \
  && pip install --no-cache-dir runcython Pillow

ADD code ../code
WORKDIR ../code
RUN cd utils && make && cd ..

EXPOSE 6006
EXPOSE 8888
CMD ["/bin/bash"]