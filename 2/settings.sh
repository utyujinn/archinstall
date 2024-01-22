#!/bin/bash

#locale
sed -i 's/#ja_JP.UTF-8/ja_JP.UTF-8/g' /etc/locale.gen
locale-gen

#suspend
sed -i 's/#HandlePowerKey=poweroff/HandlePowerKey=suspend/g' /etc/systemd/logind.conf

# network
pacman -Sy dhcpcd
systemctl enable dhcpcd

# terminal
pacman -Sy alacritty
pacman -Sy zsh zsh-autosuggestions zsh-completions

# autologin
sudo mkdir /etc/systemd/system/getty@tty1.service.d
echo "
[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin utyujin --noclear %I $TERM
" > /etc/systemd/system/getty@tty1.service.d/override.conf

# font
pacman -Sy fcitx5-im fcitx5-mozc fcitx5-configtool
pacman -Sy unzip
curl https://dforest.watch.impress.co.jp/library/s/setofont/11015/setofont_v_6_20.zip > /setofont.zip
unzip setofont.zip
mkdir /usr/share/local/fonts
mv setofont/setofont* /usr/share/local/fonts
fc-cache

