FROM localhost:5000/baseimage
MAINTAINER archen <archen.sol@gmail.com>

ENV HOME /root
CMD ["/sbin/my_init"]

RUN apt-get update

ADD create_database.sql /tmp/create_database.sql

RUN apt-get install -y mysql-server && apt-get clean

RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

RUN /usr/bin/mysqld_safe & \
    sleep 10s && \
	mysql -u root < /tmp/create_database.sql

VOLUME ["/var/lib/mysql", "/var/log/mysql"]

RUN mkdir /etc/service/mysql
ADD mysql.sh /etc/service/mysql/run
