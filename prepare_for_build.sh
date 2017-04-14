#!/usr/bin/env bash

# clone the repository and clean up things

git clone git://git.apache.org/activemq-artemis.git

cd activemq-artemis

pushd artemis-native
make clean
popd
