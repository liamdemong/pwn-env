FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    python3 python3-pip \
    gdb gdb-multiarch \
    gcc gcc-multilib \
    clang \
    binutils \
    file \
    netcat-openbsd \
    curl wget git \
    checksec \
    vim

RUN pip3 install pwntools
RUN bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
RUN pip3 install ROPgadget

WORKDIR /ctf
