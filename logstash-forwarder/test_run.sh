docker run -d --name logstash-forwarder --link logstash:logs -v /tmp/fifofeed:/tmp/log.sock localhost:5000/logstash-forwarder
