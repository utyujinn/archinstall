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
- 1.5
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

after partitioning,
```
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/0/get.sh > get.sh
sh get.sh
```

> Please edit env.sh and applist.txt for your favor.
> env.sh *you can edit target partition.
> applist.txt * you can manage applications by edit this.

after editing,
```
sh 0.sh
sh 1.sh
sh chroot.sh
sh 2.sh
```

after reboot,
```
sh 3.sh
```