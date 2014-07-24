FROM localhost:5000/java-jdk7
MAINTAINER archen <archen.sol@gmail.com>

CMD ["/sbin/my_init"]

RUN echo "/root" >> /etc/container_environment/HOME

RUN echo "deb http://downloads.sourceforge.net/project/sonar-pkg/deb binary/" >> /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y --force-yes sonar && apt-get clean

RUN sed -i 's|#wrapper.java.additional.6=-server|wrapper.java.additional.6=-server|g' /opt/sonar/conf/wrapper.conf
RUN sed -i 's|sonar.jdbc.password=sonar|sonar.jdbc.password=123qwe|g' /opt/sonar/conf/sonar.properties
RUN sed -i 's|sonar.jdbc.url=jdbc:h2|#sonar.jdbc.url=jdbc:h2|g' /opt/sonar/conf/sonar.properties
RUN sed -i 's|#sonar.jdbc.url=jdbc:mysql://localhost|sonar.jdbc.url=jdbc:mysql://${env:DB_PORT_3306_TCP_ADDR}|g' /opt/sonar/conf/sonar.properties 

RUN mkdir /etc/service/sonarqube
ADD sonarqube.sh /etc/service/sonarqube/run
