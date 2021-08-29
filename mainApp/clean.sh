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
echo [Main app] stop container $containerName
docker stop -t 2 $containerName
echo [Main app] remove container $containerName
docker rm -f $containerName
