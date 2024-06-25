#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt update
apt -y install build-essential bc flex bison bash make
cd kernel 
make xiaomi_nabu_maverick_defconfig
make headers_install 
cd ../qbootctl 
make clean all
