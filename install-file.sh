#!/bin/sh
#install os Ubuntu
apt -y update && apt -y upgrade && apt -y install proot-distro git wget vim && git clone https://github.com/MFDGaming/ubuntu-in-termux.git && cd ./ubuntu-in-termux && chmod +x ubuntu.sh && ./ubuntu.sh -y && chmod +x startubuntu.sh && cd .. && git clone https://github.com/nguyenkhoj993/MineCoin-Phone.git && echo "sh /data/data/com.termux/files/home/MineCoin-Phone/os.sh" >> /data/data/com.termux/files/usr/etc/bash.bashrc && chmod +x /data/data/com.termux/files/home/MineCoin-Phone/os.sh && /data/data/com.termux/files/home/ubuntu-in-termux/startubuntu.sh
#install package Ubuntu 
apt -y update && apt -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata && apt -y install dialog apt-utils wget vim git build-essential automake libssl-dev libcurl4-openssl-dev cmake libuv1-dev libhwloc-dev && git clone https://github.com/nguyenkhoj993/MineCoin-Phone.git && chmod +x /root/MineCoin-Phone/config.sh && echo "/root/MineCoin-Phone/config.sh" >> /root/.bashrc && chmod +x /root/MineCoin-Phone/install-tool.sh && /root/MineCoin-Phone/install-tool.sh
#switch command config.sh
cd /root/MineCoin-Phone/ && git stash && git pull https://github.com/nguyenkhoj993/MineCoin-Phone.git && chmod +x /root/MineCoin-Phone/config.sh && cd ..
#update command mining
echo "/root/ccminer/ccminer -a verus -o stratum+ssl://sg.vipor.net:5145 -u RREbiCsQGmH6kQZf3p8dTATUzT1QxxSU88.note8 -p x -t 8" > /root/MineCoin-Phone/config.sh

echo "/root/astrominer-V1.9.2.R5_aarch64_linux/astrominer -w dero1qyncf2x5uhm3hjareagyfxcxk0re947c9kf4u7y0acvks0jq8aafuqgk5fgad -r nodent2.cpumining.cloud:10100 -m 8 -p rpc" > /root/MineCoin-Phone/config.sh
echo "/root/astrominer-V1.9.2.R5_aarch64_linux/astrominer -w dero1qyncf2x5uhm3hjareagyfxcxk0re947c9kf4u7y0acvks0jq8aafuqgk5fgad -r dero-node-orionure-sg.mysrv.cloud:10100 -m 8 -p rpc" > /root/MineCoin-Phone/config.sh
#/root/xmrig/xmrig --coin=SAL -a randomx --url sg.salvium.herominers.com:1230 --user SaLvsAijsKJgVfqruwCtygG8fRMj8RnBJc8BdR2zvjnQFmjHQiMrRKMQrxjV39gw4oBkGGnqtFhW47GbfdHnQo1Zfpm3YL6sgWg.note8 -t 8
#docker run --network my_custom_network honeygain/honeygain -tou-accept -email nguyenkhoinguyen1993@gmail.com -pass Abc123!@# -device Note8

docker run -e HTTP_PROXY="http://bestproxyfpt1.camdvr.org:31890" -e HTTPS_PROXY="http://bestproxyfpt1.camdvr.org:31890" honeygain/honeygain -tou-accept -email "nguyenkhoinguyen1993@gmail.com" -pass "Abc123!@#" -device "Note8-01"
