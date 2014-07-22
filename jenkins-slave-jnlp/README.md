jenkins-slave-jnlp
================

Creates a Jenkins slave node that connects via JNLP
	docker build -t localhost:5000/jenkins-slave-jnlp .

Configure global security on jenkins-master and modify the JNLP port to a 
fixed number, then run the jenkins-master container with that port exposed.

e.g. 

docker kill jenkins-master
docker rm jenkins-master
docker run -d --name jenkins-master -v /data/jenkins-master:/jenkins -p 8080:8080 -p <jnlp_port>:<jnlp_port> localhost:5000/jenkins-slave-jnlp

Add a node through the configure interface. Copy the hex string after -secret 
from the status page for the node and past the value in the 
jenkins-slave-jnlp/envs/JENKINS_SECRET file.

Run: sudo ./stage <number>
e.g. sudo ./stage 1

where <number> is the id we will use to identify the slave. Then run: 

./docker_command.sh
