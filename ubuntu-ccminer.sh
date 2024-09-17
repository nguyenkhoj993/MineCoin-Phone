#!/bin/sh

git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git
cd ./ccminer && chmod +x build.sh && chmod +x configure.sh && chmod +x autogen.sh && ./build.sh
