FROM localhost:5000/baseimage
MAINTAINER archen <archen.sol@gmail.com>

ENV HOME /root
CMD ["/sbin/my_init"]

RUN apt-get update
RUN apt-get install -y nginx

RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/

RUN mkdir -p /ssl
ADD ssl/server.key /ssl/server.key
ADD ssl/server.crt /ssl/server.crt

EXPOSE 80
EXPOSE 443

RUN mkdir /etc/service/nginx
ADD nginx.sh /etc/service/nginx/run
