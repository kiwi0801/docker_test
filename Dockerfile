FROM ubuntu:latest
MAINTAINER kiwi
RUN apt-get install nodejs
RUN mkdir /src; cd /src
ADD ./src /src

EXPOSE 5000

CMD cd /src; node .
