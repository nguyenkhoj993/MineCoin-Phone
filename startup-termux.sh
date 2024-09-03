#!/bin/sh

git clone https://github.com/MFDGaming/ubuntu-in-termux.git
cd ./ubuntu-in-termux && chmod +x ubuntu.sh && ./ubuntu.sh -y && chmod +x ubuntu.sh && ./startubuntu.sh
cat << EOF >> /data/data/com.termux/files/home/usr/etc/bash.bashrc
/data/data/com.termux/files/home/ubuntu-in-termux/startubuntu.sh
EOF
