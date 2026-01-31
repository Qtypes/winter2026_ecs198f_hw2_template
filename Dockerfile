FROM debian:bookworm

RUN apt-get update && apt-get install -y \
    curl \
    git

RUN curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
 && bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda

RUN git clone https://github.com/dbarnett/python-helloworld.git /python-helloworld
