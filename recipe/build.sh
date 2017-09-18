#!/bin/bash

./configure --host=$HOST --prefix=$PREFIX
make
make check
make install
