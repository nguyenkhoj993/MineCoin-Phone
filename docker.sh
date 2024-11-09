#!/bin/sh
# Thêm khóa GPG của Docker và repository Docker
qemu-img create -f qcow2 /data/data/com.termux/files/home/alpine/alpine.img 5G
qemu-system-x86_64 -machine q35 -m 1024 -smp cpus=2 -cpu qemu64 -drive if=pflash,format=raw,read-only=on,file=$PREFIX/share/qemu/edk2-x86_64-code.fd -netdev user,id=n1,dns=8.8.8.8,hostfwd=tcp::2222-:22 -device virtio-net,netdev=n1 -cdrom alpine-virt-3.19.1-x86_64.iso -nographic /data/data/com.termux/files/home/alpine/alpine.img