FROM localhost:5000/baseimage
MAINTAINER archen <archen.sol@gmail.com>

ENV HOME /root
CMD ["/sbin/my_init"]

RUN apt-get update

# install deps
RUN apt-get install -y wget git golang ruby ruby-dev irb ri rdoc build-essential libopenssl-ruby1.9.1 libssl-dev zlib1g-dev

# clone logstash-forwarder
RUN git clone git://github.com/elasticsearch/logstash-forwarder.git /tmp/logstash-forwarder
RUN cd /tmp/logstash-forwarder && git checkout v0.3.1 && go build

# Install fpm
RUN gem install fpm

# Build deb
RUN cd /tmp/logstash-forwarder && make deb
RUN dpkg -i /tmp/logstash-forwarder/*.deb

# Cleanup
RUN rm -rf /tmp/*

# Add /dev/log

RUN mkdir /opt/certs/
ADD ssl/insecure-forwarder.crt /opt/certs/logstash-forwarder.crt
ADD ssl/insecure-forwarder.key /opt/certs/logstash-forwarder.key

RUN mkdir /etc/service/logstash-forwarder
ADD logstash-forwarder.sh /etc/service/logstash-forwarder/run
