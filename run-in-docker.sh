#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt update
apt -y install build-essential bc flex bison bash zlib-dev meson cmake
cd kernel 
make headers_install 
cd ../qbootctl 
meson build
meson compile -C build
mv build/qbootctl .
