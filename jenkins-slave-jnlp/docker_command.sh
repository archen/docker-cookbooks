docker run --link jenkins-master:jenkins -d -v /data/jenkins-slave-jnlp-$1:/var/lib/jenkins --name jenkins-slave-jnlp-$1 localhost:5000/jenkins-slave-jnlp
