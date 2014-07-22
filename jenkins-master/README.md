jenkins-master
================

Creates a jenkins master image
	docker build -t localhost:5000/jenkins-master .

	docker run -d -p 8080:8080 -v /data/jenkins-master:/jenkins --name jenkins-master localhost:5000/jenkins-master
