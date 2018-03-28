imgtag="nvdevtools/pytorch:0.2.0-cuda-8.0" 
nvidia-docker run --privileged=true -e DISPLAY --net=host --ipc=host -it --dns 10.19.185.252 -p 7022:22  -p 5022:5022 \
     -v $HOME/.Xauthority:/home/nvidia/.Xauthority  \
     -v /raid/HPC:/raid/HPC  \
     -v /raid/tools:/raid/tools \
     -w `pwd`  $imgtag /bin/bash

