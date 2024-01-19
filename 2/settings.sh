#!/bin/bash

#locale
timedatectl set-timezone Japan
sed -i 's/#ja_JP.UTF-8/ja_JP.UTF-8/g' /etc/locale.gen
locale-gen

#suspend
sed -i 's/#HandlePowerKey=shutdown/HandlePowerKey=suspend/g' /etc/systemd/logind.conf

# network
pacman -Sy dhcpcd
systemctl enable dhcpcd

# terminal
pacman -Sy alacritty

# autologin
sudo mkdir /etc/systemd/system/getty@tty1.service.d
echo "
[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin utyujin --noclear %I $TERM
" > /etc/systemd/system/getty@tty1.service.d

# font
pacman -Sy unzip
curl https://dforest.watch.impress.co.jp/library/s/setofont/11015/setofont_v_6_20.zip > /setofont.zip
unzip setofont.zip
mkdir /usr/share/local/fonts
mv setofont/setofont* /usr/share/local/fonts
fc-cache

# dotfiles
git clone https://github.com/utyujinn/dotfiles
sh dotfiles/sh/install.sh
