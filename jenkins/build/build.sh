#!/bin/bash

#copy the mew jar to the build location

cp -f java-app/target/*.jar jenkins/build/

echo "***building image****"
cd jenkins/build/ && docker-compose -f docker-compose-build.yml build
