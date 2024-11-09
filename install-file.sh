#!/bin/sh
#install ubuntu
apt -y update && apt -y upgrade && apt -y install proot-distro git wget vim && git clone https://github.com/MFDGaming/ubuntu-in-termux.git && cd ./ubuntu-in-termux && chmod +x ubuntu.sh && ./ubuntu.sh -y && chmod +x startubuntu.sh && cd .. && git clone https://github.com/nguyenkhoj993/MineCoin-Phone.git && echo "sh /data/data/com.termux/files/home/MineCoin-Phone/os.sh" >> /data/data/com.termux/files/usr/etc/bash.bashrc && chmod +x /data/data/com.termux/files/home/MineCoin-Phone/os.sh
#install ccminer
apt -y update && apt -y upgrade && apt -y install wget vim build-essential automake libssl-dev libcurl4-openssl-dev vim git && git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git && cd ./ccminer && chmod +x build.sh && chmod +x configure.sh && chmod +x autogen.sh && ./build.sh && cd ..
#start config file mine verus
rm -rf /root/MineCoin-Phone && git clone https://github.com/nguyenkhoj993/MineCoin-Phone.git && chmod +x /root/MineCoin-Phone/config.sh && echo "/root/MineCoin-Phone/config.sh" >> /root/.bashrc
#&& vim /root/.bashrc
#install docker
apt -y update && apt -y upgrade && apt -y install qemu-utils qemu-common qemu-system-x86_64-headless && mkdir alpine && cd alpine && wget wget http://dl-cdn.alpinelinux.org/alpine/v3.19/releases/x86_64/alpine-virt-3.19.1-x86_64.iso && sh /data/data/com.termux/files/home/MineCoin-Phone/docker.sh
#switch command config.sh
cd /root/MineCoin-Phone/ && git stash && git pull https://github.com/nguyenkhoj993/MineCoin-Phone.git && chmod +x /root/MineCoin-Phone/config.sh && cd ..

ifup eth0 && wget wget https://raw.githubusercontent.com/cyberkernelofficial/docker-in-termux/main/answerfile && sed -i -E 's/(local kernel_opts)=.*/\1="console=ttyS0"/' /sbin/setup-disk && setup-alpine -f answerfile
qemu-system-x86_64 -machine q35 -m 1024 -smp cpus=2 -cpu qemu64 -drive if=pflash,format=raw,read-only=on,file=$PREFIX/share/qemu/edk2-x86_64-code.fd -netdev user,id=n1,dns=8.8.8.8,hostfwd=tcp::2222-:22 -device virtio-net,netdev=n1 -nographic /data/data/com.termux/files/home/alpine/alpine.img