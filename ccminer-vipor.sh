#!/bin/sh

cat << EOF >> /root/.bashrc
/root/ccminer/ccminer -a verus -o stratum+tcp://sg.vipor.net:5045 -u RREbiCsQGmH6kQZf3p8dTATUzT1QxxSU88.note8-01 -t 8
EOF