#!/usr/bin/env bash

# build everything that should be analyzed

cd qpid-proton/build

# https://scan.coverity.com/download?tab=cxx
# https://scan.coverity.com/download?tab=other
cmake --build . --target install
