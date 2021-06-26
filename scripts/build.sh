#!/bin/sh

set e+x

# Check for current available node version from cypress.io to be sure
NODE_VERSION=14.7.0
CHROME_VERSION=84.0.4147.105
LOCAL_NAME=cypress-kit:node${NODE_VERSION}-chrome${CHROME_VERSION:0:6}

echo "Building $LOCAL_NAME"
docker build --build-arg NODE_VERSION=$NODE_VERSION  --build-arg CHROME_VERSION=$CHROME_VERSION -t $LOCAL_NAME .
