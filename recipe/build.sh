#!/bin/bash

# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/libtool/build-aux/config.* ./config

./configure --host=$HOST --build=$BUILD --prefix=$PREFIX
make
make check
make install
