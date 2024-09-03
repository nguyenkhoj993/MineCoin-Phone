#!/bin/sh

git clone https://github.com/MFDGaming/ubuntu-in-termux.git
chmod +x /data/data/com.termux/files/home/ubuntu-in-termux/ubuntu.sh
/data/data/com.termux/files/home/ubuntu-in-termux/ubuntu.sh -y
chmod +x /data/data/com.termux/files/home/ubuntu-in-termux/startubuntu.sh
/data/data/com.termux/files/home/ubuntu-in-termux/startubuntu.sh
cat << EOF >> /data/data/com.termux/files/usr/etc/bash.bashrc
/data/data/com.termux/files/home/ubuntu-in-termux/startubuntu.sh
EOF
