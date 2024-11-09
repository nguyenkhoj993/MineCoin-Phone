#install ccminer
git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git && cd ./ccminer && chmod +x /root/ccminer/build.sh && chmod +x /root/ccminer/configure.sh && chmod +x /root/ccminer/autogen.sh && /root/ccminer/build.sh && cd ..
#install xmrig
git clone https://github.com/salvium/xmrig.git && cd ./xmrig && cmake . && make -j$(nproc) && chmod +x /root/xmrig/xmrig && cd .. 