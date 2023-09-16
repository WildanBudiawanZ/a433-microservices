#!/bin/bash

# build image item-app dengan tag v1 sesuai Dockerfile
docker build -t item-app:v1 .

# menampilkan semua images di docker
docker images

# untuk menyimpan image ke Docker Registry, port default 5000 digunakan, jadi pake 5001
docker tag item-app:v1 wildanbudiawanz/item-app:v1

# login ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u wildanbudiawanz --password-stdin

# push image ke docker hub
docker push wildanbudiawanz/item-app:v1