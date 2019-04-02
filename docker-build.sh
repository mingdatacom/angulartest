#!/usr/bin/env bash
IMAGES=mingdatacom/frontend:latest
CONTAINER=angulartest_frontend_1

docker stop ${CONTAINER} || true
docker rm -f ${CONTAINER} || true
#sudo docker rmi -f ${IMAGES} || true
#sudo mvn clean install package docker:build -Dmaven.test.skip=true -DskipTests
docker build -t mingdatacom/frontend .

#sudo docker push ${IMAGES}