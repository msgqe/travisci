#!/usr/bin/env bash

# build everything that should be analyzed

cd cli-java

# https://scan.coverity.com/download?tab=java
mvn -DskipTests=true compile
