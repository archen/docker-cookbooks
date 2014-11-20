FROM localhost:5000/java-jdk7
MAINTAINER archen <archen.sol@gmail.com>

ENV HOME /root
CMD ["/sbin/my_init"]

# Install ElasticSearch.
RUN \
  cd /tmp && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.tar.gz && \
  tar xvzf elasticsearch-1.1.1.tar.gz && \
  rm -f elasticsearch-1.1.1.tar.gz && \
  mv /tmp/elasticsearch-1.1.1 /elasticsearch

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data
RUN mkdir -p /data/elasticsearch
ADD elasticsearch.yml /data/elasticsearch/elasticsearch.yml
ADD logging.yml	/data/elasticsearch/logging.yml

EXPOSE 9200
EXPOSE 9300

RUN mkdir /etc/service/elasticsearch
ADD elasticsearch.sh /etc/service/elasticsearch/run
