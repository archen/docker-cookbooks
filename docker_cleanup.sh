docker rm `docker ps -a | grep Exited | awk '{print $1 }'`
docker rmi `docker images -aq`
