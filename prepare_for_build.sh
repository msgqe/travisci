#!/usr/bin/env bash

# clone the repository

git clone git://git.apache.org/qpid-proton.git

cd qpid-proton
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$PWD/install
