FROM ubuntu:latest
MAINTAINER kiwi
RUN apt-get update
RUN apt-get install -y nodejs
RUN mkdir /src; cd /src
ADD ./src /src

EXPOSE 5000


CMD cd /src; nodejs .
