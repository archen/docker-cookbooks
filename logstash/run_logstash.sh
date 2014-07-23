docker run -d --name logstash --link elasticsearch:es -p 9292:9292 -p 5043:5043 localhost:5000/logstash

