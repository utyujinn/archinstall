#!/bin/bash

source env.sh

#add entry
echo "
title   Arch llinux
linux   /vmlinux-linux
initrd  /amd-uucode.img
initrd  /initramfs-linux.img
options root=UUID=xxxx rw
" > /boot/loader/entries/arch2.conf

echo "
please do below command and edit entry file.
blkid | grep [your partition name] >> /boot/loader/entries/arch.conf
"
blkid | grep /dev/$ROOTPART >> /mnt/boot/loader/entries/$ROOTPART.conf
