#!/bin/bash

# build image karsajobs dengan tag latest sesuai Dockerfile
docker build -t wildanbudiawanz/karsajobs:latest .

# login ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u wildanbudiawanz --password-stdin

# push image ke docker hub
docker push wildanbudiawanz/karsajobs:latest