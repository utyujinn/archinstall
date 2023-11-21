#!/bin/bash

#locale
sudo timedatectl set-timezone Japan
sudo sed -i 's/#ja_JP.UTF-8/ja_JP.UTF-8/g' /etc/locale.gen
sudo locale-gen

#suspend
sudo sed -i 's/#HandlePowerKey=shutdown/HandlePowerKey=suspend/g' /etc/systemd/logind.conf

# network
pacman -Sy dhcpcd
systemctl enable dhcpcd

# terminal
pacman -Sy alacritty

# autologin
sudo mkdir /etc/systemd/system/getty@tty1.service.d```
sudo vim /etc/systemd/system/getty@tty1.service.d```
echo "
[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin utyujin --noclear %I $TERM
" > /etc/systemd/system/getty@tty1.service.d

# mount
echo "/dev/nvme0n1p2 /run/media/utyujin/data ntfs-3g uid=utyujin,gid=wheel,umask=0022 0 2" | sudo tee -a /mnt/data

# preparation
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/2.sh > /home/utyujin/2.sh
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/3.sh > /home/utyujin/3.sh
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/4.sh > /home/utyujin/4.sh
