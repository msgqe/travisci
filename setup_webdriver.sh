#!/usr/bin/env bash
set -ex

# clone the repository and build docker images
docker pull jdanekrh/dispatch-console:${IMAGE_TAG}
docker pull jdanekrh/dispatch-router:${IMAGE_TAG}
docker run -d -p 127.0.0.1:8080:8080 jdanekrh/dispatch-console:${IMAGE_TAG}
docker run -d -p 127.0.0.1:5673:5673 jdanekrh/dispatch-router:${IMAGE_TAG}
docker ps -a
# https://github.com/vadesecure/test-automation-framework/blob/66c29c58cdc219c9fe9bd702a7d1784c34b913ce/.travis.yml
export CHROMEDRIVER_VERSION=`curl -s http://chromedriver.storage.googleapis.com/LATEST_RELEASE`
curl -L -O "http://chromedriver.storage.googleapis.com/${CHROMEDRIVER_VERSION}/chromedriver_linux64.zip"
unzip chromedriver_linux64.zip
chmod +x chromedriver
curl -L -O "https://github.com/mozilla/geckodriver/releases/download/v0.15.0/geckodriver-v0.15.0-linux64.tar.gz"
tar -xvf geckodriver-*
