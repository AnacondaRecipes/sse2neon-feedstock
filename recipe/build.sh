#!/bin/bash

mkdir ${PREFIX}/include
cp ${SRC_DIR}/sse2neon.h ${PREFIX}/include

make check
