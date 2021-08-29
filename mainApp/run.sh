#!/bin/bash
set -e

imageTag=$1
if [ -z "$1" ]
  then
    echo No image tag provided. latest will be used
    imageTag=latest
fi

repositoryName="963026277714.dkr.ecr.eu-central-1.amazonaws.com/mainapp"
imageFullName="${repositoryName}:${imageTag}"
containerName="dkr-main-app"
containerInternalPort=8080
containerExternalPort=8081

# main script body
echo [Main app] run container $containerName on port $containerExternalPort
docker run --name $containerName -d -p $containerExternalPort:$containerInternalPort $imageFullName
