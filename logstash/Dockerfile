FROM localhost:5000/java-jdk7
MAINTAINER archen <archen.sol@gmail.com>

ENV HOME /root
CMD ["/sbin/my_init"]

RUN echo "/root" >> /etc/container_environment/HOME

ENV LUMBERJACK_TAG MYTAG

ENV ELASTICWORKERS 1

RUN cd /opt && \
    wget https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz && \
    tar -xzvf ./logstash-1.4.2.tar.gz && \
    mv ./logstash-1.4.2 /opt/logstash && \
    rm ./logstash-1.4.2.tar.gz

RUN mkdir /ssl
ADD ssl/insecure-forwarder.crt /opt/certs/logstash-forwarder.crt
ADD ssl/insecure-forwarder.key /opt/certs/logstash-forwarder.key
ADD collectd-types.db /opt/collectd-types.db

EXPOSE 514
EXPOSE 5043
EXPOSE 9200
EXPOSE 9292

RUN mkdir /etc/service/logstash
ADD logstash.sh /etc/service/logstash/run
