#!/bin/bash

echo "*********************"
echo "***pushing image***"
echo "*********************"
IMAGE="maven-project"

echo "********************"
echo "***logging into docker hub**"
echo "**********************"
docker login -u naurel1467 -p $PASS	

echo "*****tagging****"
docker tag $IMAGE:$BUILD_TAG naurel1467/$IMAGE:$BUILD_TAG


echo "***pushing imagew to docker hub**"

docker push naurel1467/$IMAGE:$BUILD_TAG

