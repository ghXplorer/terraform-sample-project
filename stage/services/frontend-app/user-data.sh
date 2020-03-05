#!/bin/bash

yum update -y
mkdir busybox_app && cd busybox_app
wget https://busybox.net/downloads/binaries/1.28.1-defconfig-multiarch/busybox-x86_64
mv busybox-x86_64 busybox
chmod +x busybox
echo "Hello, World from $(hostname)" >> index.html
echo "${db_address}" >> index.html
echo "${db_port}" >> index.html
nohup ./busybox httpd -f -p ${server_port} &
