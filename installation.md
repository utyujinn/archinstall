---
title: installation
author: a
date: 2023-10-15
image: nyakori.png
---


# make bootable device
download arch iso, copy to usb by
```
sudo fdisk // check device name
```

```
dd if=file.iso of=/dev/sda
```

# boot from usb and install

choose
```
> install arch linux
```

## check boot mode

To check boot mode UEFI or BIOS by
```
cat /sys/firmware/efi/fw_platform_size
```

## connect to internet

If you use usb tethering, nothing to do.

## partitioning

## remove already existing partition

To check device 
```
fdisk -l
```

After find device
```
fdisk /dev/nvme0n1
```

to check partitionnumber
```
p
```

to remove 
```
d
```

# add partition

to create
```
n
```
```
enter x2
```
to assign size
```
+xG
```

repeat this step

# assign partition type

to start
```
t
```

select type.

for efi system, 1
for linux swap, 19
for linux x86-64, 23

# write partition

to check,
```
p
```

if all would be ok, 
```
w
```
to write

# format partition

for root partition
```
mkfs.ext4 /dev/nvme0n1p6
```

for swap partition
```
mkswap /dev/nvme0n1p5
```

for efi system partition
```
mkfs.fat -F 32 /dev/nvme0n1p4
```


# mount device
for root
```
mount /dev/nvme0n1p6 /mnt
```

for efi
```
mount --mkdir /dev/nvme0n1p4 /mnt/boot
```

for swap
```
swapon /dev/nvme0n1p5
```


# install essential packages
```
pacstrap -K /mnt base linux linux-firmware
pacstrap /mnt xf86-video-amdgpu amd-ucode
```

# chroot into target device

```
arch-chroot /mnt
```

to configure root pass
```
passwd
```

to set hostname
```
cd etc
touch hostname
echo U > hostname
```

to add user
```
pacman -S vim vi
useradd -m -g wheel -G users utyujin```
passwd utyujin
```

```
visudo
```

to enable network

```
pacman -S networkmanager network-manager-applet
```

```
systemctl enable NetworkManager
```

# 
after exit chroot,
to install bootloader
```
bootctl --path=boot install
```

if returned error because of free space, go to boot
```
cd /boot
```

and remove not needed files.


# add loader entry

make file in /boot/loader/entries/arch.conf
```
title   Arch llinux
linux   /vmlinux-linux
initrd  /amd-uucode.img
initrd  /initramfs-linux.img
options root=UUID=xxxx rw
```

to write uuid, 
```
blkid | grep nvme0n1p5 >> /boot/loader/entries/arch.conf
```
is makes it easily.

# install desktop environment
```
pacman -S xorg-server xorg-xinit
pacman -S lxde
```
choose lxde-common, lxpanel, lxsession, openbox(4,11,13,16)

To start desktop,
```
startx /usr/bin/startlxde
```

For efficiency, Go home directory and
```
touch .xinitrc
```

and write
```
exec startlxde
```

to enable touch touchpad as same movement as click left button,

create
```
/etc/X11/xorg.conf.d/30-touchpad.conf
```
and write
```
Section "InputClass" 
Identifier "touchpad"
Driver "libinput"
MatchIsTouchpad "on"
Option "Tapping" "on"
EndSection
```
finally, restart your PC by 
```
reboot
```