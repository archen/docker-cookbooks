FROM localhost:5000/baseimage
MAINTAINER archen <archen.sol@gmail.com>

RUN apt-get update
RUN apt-get -y install python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update && apt-get -y upgrade

RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

RUN apt-get -y install oracle-java7-installer && apt-get clean
RUN update-alternatives --display java 
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
