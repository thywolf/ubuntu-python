FROM ubuntu:latest
MAINTAINER thywolf@gmail.com
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y -qq && \
    apt-get install -y -qq python3.9 python3-pip python3.9-dev git openssh-client && \
    rm -rf /var/lib/apt/lists/* && \
    ln -sf /usr/bin/python3.9 /usr/bin/python3 && \
    ln -sf /usr/bin/python3.9 /usr/bin/python && \
    ln -sf /usr/bin/pip3 /usr/bin/pip
CMD ["python3"]
