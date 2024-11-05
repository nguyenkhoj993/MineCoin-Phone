#!/bin/sh
#install ubuntu
apt -y update && apt -y install git && apt -y upgrade && apt -y install proot-distro && apt -y install wget && echo "/data/data/com.termux/files/home/ubuntu-in-termux/startubuntu.sh" >> /data/data/com.termux/files/usr/etc/bash.bashrc && git clone https://github.com/MFDGaming/ubuntu-in-termux.git && cd ./ubuntu-in-termux && chmod +x ubuntu.sh && ./ubuntu.sh -y && chmod +x startubuntu.sh && ./startubuntu.sh
#install ccminer
apt -y update && apt -y install git && apt -y upgrade && apt -y install wget && apt -y install build-essential && apt -y install automake && apt-get install libssl-dev && apt-get install libcurl4-openssl-dev && git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git && cd ./ccminer && chmod +x build.sh && chmod +x configure.sh && chmod +x autogen.sh && ./build.sh
#start config file
cd .. && git clone https://github.com/nguyenkhoj993/MineCoin-Phone.git && chmod +x config.sh && echo "/root/MineCoin-Phone/config.sh" >> /root/.bashrc
