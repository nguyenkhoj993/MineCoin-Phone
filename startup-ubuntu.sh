#!/bin/sh

git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh && chmod +x configure.sh && chmod +x autogen.sh && ./build.sh
cat << EOF >> ./.bashrc
./ccminer/ccminer -a verus -o stratum+tcp://sg.vipor.net:5045 -u RREbiCsQGmH6kQZf3p8dTATUzT1QxxSU88.note8-01 -t 8
EOF
