#!/bin/sh

git clone https://github.com/MFDGaming/ubuntu-in-termux.git
cd ubuntu-in-termux
chmod +x ubuntu.sh
./ubuntu.sh -y
chmod +x ubuntu.sh
./startubuntu.sh
cat << EOF >> ../usr/etc/bash.bashrc
./ubuntu-in-termux/startubuntu.sh
EOF