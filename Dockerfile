FROM ubuntu:latest
MAINTAINER thywolf@gmail.com

ENV TZ=Europe/Warsaw
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get -yq update && apt-get install -yqq python3.9 python3.9-dev git
CMD ["python]
