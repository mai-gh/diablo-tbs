#!/bin/bash

test -d ./build || mkdir build

cmake -S ./devilutionX-1.5.0 -B ./build -DBUILD_TESTING=off -DNONET=on -DDEBUG=on &&
time ccache cmake --build ./build -j $(getconf _NPROCESSORS_ONLN) &&
./build/devilutionx
