#!/bin/bash
echo "********************"
echo "***testing****"
echo "************************"

WORKSPACE=/home/ubuntu/jenkins-data/jenkins_home/workspace/pipeline-maven-project1


docker run --rm -v $WORKSPACE/java-appp:/app -v /root/.me/:/root/.me/ -w /app maven:3-alpine "$@"
