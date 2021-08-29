#!/bin/bash
set -e

imageTag=$1
if [ -z "$1" ]
  then
    echo No image tag provided. latest will be used
    imageTag=latest
fi

(exec "${BASH_SOURCE%/*}/mainApp/clean.sh" $imageTag)
(exec "${BASH_SOURCE%/*}/mainApp/run.sh" $imageTag)
