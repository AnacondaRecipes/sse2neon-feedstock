#!/bin/bash

mkdir -p ${PREFIX}/include/sse2neon
cp -r sse2neon.h $PREFIX/include/sse2neon

unset CFLAGS
unset CXXFLAGS

if [[ "${target_platform}" == "linux-64" ]]; then
    make check | tee output.txt || true
    test $(grep failed output.txt | wc -l) -eq 2
    grep "mm_loadu_si32                  failed" output.txt
    grep "mm_loadu_si16                  failed" output.txt
else
    make check
fi
