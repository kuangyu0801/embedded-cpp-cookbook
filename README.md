https://downloads.raspberrypi.org/raspbian_lite/images/raspbian_lite-2019-07-12/

https://github.com/dhruvvyas90/qemu-rpi-kernel/blob/master/kernel-qemu-4.14.79-stretch

# Practice Project for Embedded Programming with Modern C++ Cookbook

https://github.com/dhruvvyas90/qemu-rpi-kernel/blob/master/versatile-pb.dtb

```
qemu-system-arm -M versatilepb -dtb versatile-pb.dtb -cpu arm1176 -kernel kernel-qemu-4.14.79-stretch -m 256 -drive file=2019-07-10-raspbian-buster-lite.img,format=raw -append "rw console=ttyAMA0rootfstype=ext4 root=/dev/sda2 loglevel=8" -net user,hostfwd=tcp::22023-:22,hostfwd=tcp::9090-:9090 -net nic -serial stdio
```


docker pull ubuntu:bionic

docker run --name test_0 -it -v ./test:/mnt ubuntu:bionic bash

uname -a

https://serverfault.com/questions/987707/connect-from-windows-host-to-qemu-inside-docker

https://ubuntu.com/tutorials/how-to-run-ubuntu-desktop-on-a-virtual-machine-using-virtualbox#1-overview