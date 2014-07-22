#!/bin/bash
mkdir -p /data/jenkins-slave-jnlp-$1
echo slave$1 >> ./jenkins-slave-jnlp/envs/SLAVE_NAME
cp -r ./jenkins-slave-jnlp/* /data/jenkins-slave-jnlp-$1
rm -f ./jenkins-slave-jnlp/envs/SLAVE_NAME
