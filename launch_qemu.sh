#!/bin/bash

qemu-system-arm \
-M versatilepb \
-dtb versatile-pb.dtb \ 
-cpu arm1176 \
-kernel kernel-qemu-4.14.79-stretch \
-m 256 \
-drive file=2019-07-10-raspbian-buster-lite.img,format=raw \
-append "rw console=ttyAMA0rootfstype=ext4 root=/dev/sda2 loglevel=8" \
-net user,hostfwd=tcp::22023-:22,hostfwd=tcp::9090-:9090 \
-net nic \
-serial stdio

# username: pi
# password: raspberry