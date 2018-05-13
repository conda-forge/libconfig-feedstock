#!/bin/sh

cmake -G Ninja \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_PREFIX_PATH=$PREFIX \
      .
ninja install
ctest --output-on-failure
