#!/bin/bash
docker run -d --name sonarqube --link sonar-mysql:db -p 9000:9000 localhost:5000/sonarqube
