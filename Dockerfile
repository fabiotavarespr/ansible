FROM python:3.8.2-slim

LABEL maintainer="fabiotavarespr@gmail.com"

RUN apt-get update && \
    apt-get install -y wget unzip openssh-client sshpass

RUN pip install netaddr ansible==${ANSIBLE_VERSION:-2.9.7}

WORKDIR /opt

ENTRYPOINT ["/bin/bash"]
