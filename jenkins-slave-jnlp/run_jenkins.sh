#!/bin/bash

# run the master
docker run -d --name jenkins-master -v /data/jenkins-master:/jenkins -p 8080:8080 -p 8081:8081 localhost:5000/jenkins-master

# run the slave with ID from parameter 1
docker run --link jenkins-master:jenkins -d -v /data/jenkins-slave-jnlp-$1/envs:/etc/container_environment -v /data/jenkins-slave-jnlp-$1/jenkins:/var/lib/jenkins --name jenkins-slave-jnlp-$1 localhost:5000/jenkins-slave-jnlp
