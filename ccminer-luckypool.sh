#!/bin/sh

cat << EOF >> /root/.bashrc
/root/ccminer/ccminer -a verus -o stratum+tcp://na.luckpool.net:3956 -u RREbiCsQGmH6kQZf3p8dTATUzT1QxxSU88.note8-07 -p hybrid -t 8
EOF
