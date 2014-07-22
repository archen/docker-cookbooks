FROM localhost:5000/java-jdk7
MAINTAINER archen <archen.sol@gmail.com>

ENV HOME /root
CMD ["/sbin/my_init"]

RUN mkdir /etc/service/jenkins-slave
ADD runslave.sh /etc/service/jenkins-slave/run
