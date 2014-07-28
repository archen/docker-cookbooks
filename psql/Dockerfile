FROM localhost:5000/baseimage
MAINTAINER Kevin Glavin <archen.sol@gmail.com>


ENV HOME /root
CMD ["/sbin/my_init"]

RUN locale-gen en_US.UTF-8
RUN apt-get -qq update && LC_ALL=en_US.UTF-8 DEBIAN_FRONTEND=noninteractive apt-get install -y -q postgresql-9.3 postgresql-contrib-9.3 postgresql-9.3-postgis-2.1 libpq-dev sudo

ADD postgresql.conf /etc/postgresql/9.3/main/postgresql.conf
ADD pg_hba.conf /etc/postgresql/9.3/main/pg_hba.conf
RUN chown postgres:postgres /etc/postgresql/9.3/main/*.conf

VOLUME ["/var/lib/postgresql"]
EXPOSE 5432

RUN mkdir /etc/service/postgresql
ADD run /etc/service/postgresql/run