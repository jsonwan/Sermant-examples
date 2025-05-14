#!/bin/bash
scriptPath=$(readlink -f "${BASH_SOURCE[0]}")
scriptDir=$(dirname "$scriptPath")
echo "scriptDir=${scriptDir}"

imageRegistry=$1
version=1.0.0
name=spring-cloud-use-router-demo/gateway
dockerFile=Dockerfile
imageName="${imageRegistry}/$name:$version"
docker build -f ${scriptDir}/$dockerFile -t $imageName ${scriptDir}
docker push $imageName
