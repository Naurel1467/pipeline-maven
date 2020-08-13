#!/bin/bash
echo "********************"
echo "***building jar****"
echo "*******************"

WORKSPACE=/home/ubuntu/jenkins-data/jenkins_home/workspace/pipeline-maven-project1

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"
