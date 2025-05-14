#!/bin/bash
imageRegistry=$1
version=1.0.0
name=spring-cloud-use-router-demo/backend
dockerFile=Dockerfile
imageName="${imageRegistry}/$name:$version"
docker build -f $dockerFile -t $imageName .
docker push $imageName
