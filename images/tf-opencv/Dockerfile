FROM rlxs/opencv-cuda-tf

RUN apt-get update && apt-get install --no-install-recommends -y libcanberra-gtk-module sudo \
&& apt-get clean \ 
&& rm -rf /var/lib/apt/lists/*

RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer

ADD code ../code
WORKDIR ../code
CMD ["/bin/bash"]