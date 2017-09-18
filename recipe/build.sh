#!/bin/bash

./configure --build=$BUILD --host=$HOST --prefix=$PREFIX
make
make check
make install
