#!/usr/bin/env bash

# clone the repository and clean up things

git clone https://github.com/apache/activemq-artemis.git

cd activemq-artemis

pushd artemis-native
cmake .
make clean
popd
