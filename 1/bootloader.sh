#!/bin/bash

source ./env.sh

#add entry
echo "
title   $ROOTPART
linux   /vmlinuz-linux
initrd  /amd-ucode.img
initrd  /initramfs-linux.img
options root=UUID=xxxx rw
" > /mnt/boot/loader/entries/$ROOTPART.conf

blkid | grep /dev/$ROOTPART >> /mnt/boot/loader/entries/$ROOTPART.conf
vim /mnt/boot/loader/entries/$ROOTPART.conf
