#!/bin/bash
set -e

imageTag=$1
if [ -z "$1" ]
  then
    echo No image tag provided. latest will be used
    imageTag=latest
fi

chmod +x ${BASH_SOURCE%/*}/mainApp/buildImage.sh
(exec "${BASH_SOURCE%/*}/mainApp/buildImage.sh" $imageTag )