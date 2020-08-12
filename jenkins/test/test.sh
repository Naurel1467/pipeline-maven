#!/bin/bash

docker run --rm -v $PWD/java-app:/app -v /root/.me/:/root/.me/ -w /app maven:3-alpine "$@"
