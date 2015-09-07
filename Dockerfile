FROM ubuntu:latest
MAINTAINER kiwi
RUN apt-get install -y python python-setuptools
RUN easy_install pip
RUN pip install flask
RUN mkdir /src; cd /src
ADD src /src

EXPOSE 5000

CMD cd /src; python hello.py
