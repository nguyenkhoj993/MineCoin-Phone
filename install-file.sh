#!/bin/sh
#install ubuntu
echo "/data/data/com.termux/files/home/ubuntu-in-termux/startubuntu.sh" >> /data/data/com.termux/files/usr/etc/bash.bashrc && git clone https://github.com/MFDGaming/ubuntu-in-termux.git && cd ./ubuntu-in-termux && chmod +x ubuntu.sh && ./ubuntu.sh -y && chmod +x ubuntu.sh && ./startubuntu.sh
#install ccminer
git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git && cd ./ccminer && chmod +x build.sh && chmod +x configure.sh && chmod +x autogen.sh && ./build.sh
#start config file
git clone https://github.com/nguyenkhoj993/MineCoin-Phone.git echo "/data/data/com.termux/files/home/ubuntu-in-termux/startubuntu.sh"
