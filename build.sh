#!/bin/bash
set -e

imageTag=$1
if [ -z "$1" ]
  then
    echo No image tag provided. latest will be used
    imageTag=latest
fi

# main script body
(exec "${BASH_SOURCE%/*}/mainApp/build.sh" $imageTag)
