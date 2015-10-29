FROM ubuntu:latest
MAINTAINER kiwi
RUN apt-get install -y nodejs
RUN mkdir /src; cd /src
ADD ./src /src
EXPOSE 3000
WORKDIR /src
CMD ["nodejs", "."]
