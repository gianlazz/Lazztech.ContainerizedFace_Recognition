FROM ubuntu

RUN apt-get update -y &&\
    apt-get install -y python3 &&\
    apt-get install -y python3-setuptools &&\
    apt-get install -y python3-dev &&\
    apt-get install -y build-essential cmake &&\
    apt-get install -y libopenblas-dev liblapack-dev &&\
    apt-get install -y git &&\
    git clone https://github.com/davisking/dlib.git &&\
    cd dlib && ls &&\
    python3 setup.py install --yes USE_AVX_INSTRUCTIONS --no DLIB_USE_CUDA &&\
    apt-get install -y python3-pip &&\
    pip3 install face_recognition &&\
    export LC_ALL=C.UTF-8 &&\
    export LANG=C.UTF-8

#ENTRYPOINT ["/bin/bash"]
