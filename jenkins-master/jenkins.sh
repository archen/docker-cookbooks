#!/bin/sh
exec 2>&1
exec java -jar /opt/jenkins/jenkins.war
