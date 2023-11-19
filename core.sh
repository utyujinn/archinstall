#!bin/sh
pacstrap -K /mnt base linux linux-firmware
pacstrap /mnt xf86-video-amdgpu amd-ucode

#add entry
echo "
title   Arch llinux
linux   /vmlinux-linux
initrd  /amd-uucode.img
initrd  /initramfs-linux.img
options root=UUID=xxxx rw
" > /boot/loader/entries/arch2.conf

#preparation
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/chroot.sh > /chroot.sh
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/1.sh > /mnt/1.sh

echo "
please do below command and edit entry file.
blkid | grep [your partition name] >> /boot/loader/entries/arch.conf
"
