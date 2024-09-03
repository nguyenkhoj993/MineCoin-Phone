#!/bin/sh

git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git
chmod +x /root/MineCoin-Phone/ccminer/build.sh
chmod +x /root/MineCoin-Phone/ccminer/configure.sh
chmod +x /root/MineCoin-Phone/ccminer/autogen.sh
/root/MineCoin-Phone/ccminer/build.sh
cat << EOF >> /root/.bashrc
/root/MineCoin-Phone/ccminer/ccminer -a verus -o stratum+tcp://sg.vipor.net:5045 -u RREbiCsQGmH6kQZf3p8dTATUzT1QxxSU88.note8-01 -t 8
EOF
