#!/usr/bin/env bash
set -ex

# clone the repository and build docker images

git clone https://github.com/jdanekrh/dispatch-console-tests.git
pushd dispatch-console-tests/docker/
./build.sh
popd
