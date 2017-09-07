#!/usr/bin/env bash

# build everything that should be analyzed

cd activemq-artemis

pushd artemis-native/
./compile-native.sh
popd

# https://scan.coverity.com/download?tab=java
# see ARTEMIS-861, Coverity Scan has similar limitations as IBM JDK, by coincidence
mvn -Pibm-jdk8 -DskipTests=true -Dmaven.javadoc.skip=true compile
