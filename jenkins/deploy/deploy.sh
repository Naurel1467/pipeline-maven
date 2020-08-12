#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i  ~/.ssh/id_rsa /tmp/.auth ubuntu@172.31.22.209:/tmp/.auth
scp -i  ~/.ssh/id_rsa ./jenkins/deploy/publish.sh ubuntu@172.31.22.209:/tmp/publish.sh

ssh ubuntu@172.31.22.209 "/tmp/publish.sh"
