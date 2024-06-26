#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt update
apt -y install make rsync zlib1g-dev meson cmake
cd kernel 
make headers_install 
cd ../qbootctl 
meson build
meson compile -C ../build
