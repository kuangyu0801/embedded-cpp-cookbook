https://downloads.raspberrypi.org/raspbian_lite/images/raspbian_lite-2019-07-12/

https://github.com/dhruvvyas90/qemu-rpi-kernel/blob/master/kernel-qemu-4.14.79-stretch

# Practice Project for Embedded Programming with Modern C++ Cookbook

https://github.com/dhruvvyas90/qemu-rpi-kernel/blob/master/versatile-pb.dtb

# Linux Host

```
qemu-system-arm -M versatilepb -dtb versatile-pb.dtb -cpu arm1176 -kernel kernel-qemu-4.14.79-stretch -m 256 -drive file=2019-07-10-raspbian-buster-lite.img,format=raw -append "rw console=ttyAMA0rootfstype=ext4 root=/dev/sda2 loglevel=8" -net user,hostfwd=tcp::22023-:22,hostfwd=tcp::9090-:9090 -net nic -serial stdio
```

After execution, terminal will show it's IP address
```
         Starting /etc/rc.local Compatibility...
My IP address is 10.0.2.15 
[  OK  ] Started /etc/rc.local Compatibility.
```

docker --version

docker pull ubuntu:bionic

docker run --name test_0 -it -v ./test:/mnt ubuntu:bionic bash


uname -a

https://serverfault.com/questions/987707/connect-from-windows-host-to-qemu-inside-docker

https://ubuntu.com/tutorials/how-to-run-ubuntu-desktop-on-a-virtual-machine-using-virtualbox#1-overview

Make sure to check "Skip Unattended Installation" to enable terminal and sudo mode

# Setup Docker Container

```
apt update -y

apt install -y crossbuild-essential-armel

arm-linux-gnueabi-g++

arm-linux-gnueabi-g++ hello.cpp -o hello

# Install ssh
apt install -y ssh

# Test SSH connection
ssh -p 22023 pi@10.0.2.15

# Copy executable to raspberry pi
scp -P22023 hello pi@10.0.2.15:~
```

```
apt install -y gdb-multiarch


```

# Setup Raspberry Pi

```
sudo systemctl start ssh

```


# Start gdbserver for remote debugging

On Raspberry Pi

```
sudo apt-get install gdbserver

gdbserver 0.0.0.0:9090 ./hello
```

On docker container:

```
gdb-multiarch -q ./hello

target remote 10.0.2.15:9090
```

# Docker Image

https://www.dataset.com/blog/create-docker-image/

https://docs.docker.com/get-started/04_sharing_app/