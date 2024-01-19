# Archlinux Installer for me

## Contents
- 0
    - get files (get.sh)
    - select partition (env.sh)
    - application list (applist.txt)
    - mount partition (mount.sh)
- 1
    - install kernel (kernel.sh)
    - add boot entry (bootloader.sh)
    - get into arch partition (chroot.sh)
- 2
    - get vi,vim,sudo (base.sh)
    - make user,password and hostname (user.sh)
    - make lightweight desktop (desktop.sh)
    - do fandemental settings (settings.sh)
- 3
    - install listed apps (appinstall.sh)
    - add sound function (sound.sh)
    - install yay (yay.sh)
    - make fingerprint available (fingerprint.sh)

## Usage

### partitioning

Insert boot media,
```
fdisk -l
```
You can see device name such as /dev/nvme0n1
```
fdisk /dev/nvme0n1
```
and partition.
t,partnum,23 is good for linux root.
w to apply
```
mkfs.ext4 /dev/nvme0n1p${partnum}
```
then, partition complete!

### install

after partitioning, to get script,
```
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/0/get.sh > get.sh
sh get.sh
```

Please edit env.sh for installation appropreately complete.
In env.sh you can edit target partition.

after editing,
```
sh 0.sh
```
will mount your partition.
```
sh 1.sh
```
you will enter vim after 1.sh. please edit file to loader can load data
```
sh chroot.sh
```
you will enter partition.
```
sh 2.sh
```
you will be asked what password you use. plsase awnser these.
next, visudo will launch, edit allow non pass.

after reboot,
```
sh 3.sh
```
you can install applications.
