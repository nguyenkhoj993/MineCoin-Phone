#!/bin/sh
#install ubuntu
apt -y update && apt -y upgrade && apt -y install proot-distro git wget vim && git clone https://github.com/MFDGaming/ubuntu-in-termux.git && cd ./ubuntu-in-termux && chmod +x ubuntu.sh && ./ubuntu.sh -y && chmod +x startubuntu.sh && ./startubuntu.sh && git clone https://github.com/nguyenkhoj993/MineCoin-Phone.git && echo "sh /data/data/com.termux/files/home/MineCoin-Phone/os.sh" >> /data/data/com.termux/files/usr/etc/bash.bashrc && chmod +x /data/data/com.termux/files/home/MineCoin-Phone/os.sh
#install ccminer
apt -y update && apt -y upgrade && apt -y install wget vim build-essential automake libssl-dev libcurl4-openssl-dev vim git && git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git && cd ./ccminer && chmod +x build.sh && chmod +x configure.sh && chmod +x autogen.sh && ./build.sh && cd ..
#start config file mine verus
rm -rf /root/MineCoin-Phone && git clone https://github.com/nguyenkhoj993/MineCoin-Phone.git && chmod +x /root/MineCoin-Phone/config.sh && echo "/root/MineCoin-Phone/config.sh" >> /root/.bashrc
#&& vim /root/.bashrc
#install docker
cd /root/MineCoin-Phone/ && git stash && git pull https://github.com/nguyenkhoj993/MineCoin-Phone.git && chmod +x /root/MineCoin-Phone/config.sh && apt -y update && apt -y install sudo && apt install -y apt-transport-https ca-certificates curl software-properties-common && chmod +x /root/MineCoin-Phone/docker.sh && sh /root/MineCoin-Phone/docker.sh
#switch command config.sh
cd /root/MineCoin-Phone/ && git stash && git pull https://github.com/nguyenkhoj993/MineCoin-Phone.git && chmod +x /root/MineCoin-Phone/config.sh && cd ..

