#!/bin/sh
#install os Ubuntu
apt -y update && apt -y upgrade && apt -y install proot-distro git wget vim && git clone https://github.com/MFDGaming/ubuntu-in-termux.git && cd ./ubuntu-in-termux && chmod +x ubuntu.sh && ./ubuntu.sh -y && chmod +x startubuntu.sh && cd .. && git clone https://github.com/nguyenkhoj993/MineCoin-Phone.git && echo "sh /data/data/com.termux/files/home/MineCoin-Phone/os.sh" >> /data/data/com.termux/files/usr/etc/bash.bashrc && chmod +x /data/data/com.termux/files/home/MineCoin-Phone/os.sh
#install package Ubuntu 
apt -y update && apt -y upgrade && apt -y install wget vim git build-essential automake libssl-dev libcurl4-openssl-dev cmake libuv1-dev libhwloc-dev && git clone https://github.com/nguyenkhoj993/MineCoin-Phone.git && chmod +x /root/MineCoin-Phone/config.sh && echo "/root/MineCoin-Phone/config.sh" >> /root/.bashrc
#install ccminer
git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git && cd ./ccminer && chmod +x /root/ccminer/build.sh && chmod +x /root/ccminer/configure.sh && chmod +x /root/ccminer/autogen.sh && /root/ccminer/build.sh && cd ..
#install xmrig
git clone https://github.com/salvium/xmrig.git && cd ./xmrig && cmake . && make -j$(nproc) && chmod +x /root/xmrig/xmrig && cd .. 
#switch command config.sh
cd /root/MineCoin-Phone/ && git stash && git pull https://github.com/nguyenkhoj993/MineCoin-Phone.git && chmod +x /root/MineCoin-Phone/config.sh && cd ..