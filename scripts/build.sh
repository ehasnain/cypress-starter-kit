#!/bin/sh

set e+x

# Check for current available node version from cypress.io to be sure
NODE_VERSION="16.3.0"
CHROME_VERSION="95.0.4638.69"
IMAGE_NAME="cypress-testing"
VERSION_TAG="node$NODE_VERSION-chrome$CHROME_VERSION"

echo "Building $LOCAL_NAME"
docker build --build-arg NODE_VERSION=$NODE_VERSION  --build-arg CHROME_VERSION=$CHROME_VERSION -t $IMAGE_NAME:$VERSION_TAG -t $IMAGE_NAME:latest .
