#!/bin/sh

cat << EOF >> /root/.bashrc
/root/ccminer/ccminer -a verus -o stratum+tcp://na.luckpool.net:3956 -u RVxwfn5TggLnYPgEAGQf8W7kes28QNQGJg.note8-001 -p hybrid -t 8
EOF
