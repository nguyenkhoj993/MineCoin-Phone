#!/bin/sh

echo "/data/data/com.termux/files/home/ubuntu-in-termux/startubuntu.sh" >> /data/data/com.termux/files/usr/etc/bash.bashrc
git clone https://github.com/MFDGaming/ubuntu-in-termux.git
cd ./ubuntu-in-termux && chmod +x ubuntu.sh && ./ubuntu.sh -y && chmod +x ubuntu.sh && ./startubuntu.sh
