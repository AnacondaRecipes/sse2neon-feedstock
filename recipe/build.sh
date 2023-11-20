#!/bin/bash

if [ -d ${PREFIX}/include ];
then
    echo "Directory ${PREFIX}/include exists"
else
    echo "Error: Directory does not exists"
    mkdir ${PREFIX}/include
fi

cp ${SRC_DIR}/sse2neon.h ${PREFIX}/include

make check

