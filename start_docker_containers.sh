#!/usr/bin/env bash
set -ex

# clone the repository and build docker images
docker pull jdanekrh/dispatch-console:${IMAGE_TAG}
docker pull jdanekrh/dispatch-router:${IMAGE_TAG}
docker run -d -p 127.0.0.1:8080:8080 jdanekrh/dispatch-console:${IMAGE_TAG}
docker run -d -p 127.0.0.1:5673:5673 jdanekrh/dispatch-router:${IMAGE_TAG}
docker ps -a
