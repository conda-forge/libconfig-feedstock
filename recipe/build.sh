#!/bin/sh

autoreconf -i
./configure --prefix=$PREFIX || cat config.log
make
make check
make install
