#!/usr/bin/env bash
set -ex

# push built images into docker hub

docker login -u jdanekrh -p ${DOCKER_PASSWORD}

docker tag  jdanekrh/dispatch-console:latest jdanekrh/dispatch-console:nightly-build-$TRAVIS_BUILD_NUMBER
docker tag  jdanekrh/dispatch-router:latest jdanekrh/dispatch-router:nightly-build-$TRAVIS_BUILD_NUMBER

docker push jdanekrh/dispatch-console:latest
docker push jdanekrh/dispatch-router:latest
