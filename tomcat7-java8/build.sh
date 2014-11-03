#!/bin/sh
ACCOUNT=sepe
IMAGE=$(basename $(dirname `pwd`/.))
IMAGETAG=${ACCOUNT}/${IMAGE}
docker build -t $IMAGETAG .
