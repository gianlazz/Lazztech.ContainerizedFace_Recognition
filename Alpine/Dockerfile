FROM alpine

RUN apk update &&\
    apk add python3-setuptools &&\
    apk add python3 &&\
    apk add python3-dev &&\
    apk add build-essential cmake &&\
    apk add libopenblas-dev liblapack-dev &&\
    apk add git &&\
    git clone https://github.com/davisking/dlib.git &&\
    cd dlib && ls &&\
    python3 setup.py install --yes USE_AVX_INSTRUCTIONS --no DLIB_USE_CUDA &&\
    apk add python3-pip &&\
    pip3 add face_recognition &&\
    export LC_ALL=C.UTF-8 &&\
    export LANG=C.UTF-8
