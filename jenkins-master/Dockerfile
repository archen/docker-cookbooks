FROM localhost:5000/java-jdk7
MAINTAINER archen <archen.sol@gmail.com>

ENV HOME /root
CMD ["/sbin/my_init"]

RUN mkdir -p /jenkins
RUN mkdir -p /opt/jenkins
RUN wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war -O /opt/jenkins/jenkins.war

ENV JENKINS_HOME /jenkins

EXPOSE 8080
RUN mkdir /etc/service/jenkins
ADD jenkins.sh /etc/service/jenkins/run
