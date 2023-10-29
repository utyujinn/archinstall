#!bin/sh
sudo pacman -Sy '
vivaldi
code
xournalpp
libreoffice
blender
obs-studio
gimp
evince
alacritty
kdeconnect
firewalld
fcitx5-im
fcitx5-mozc
fcitx5-fonfigtool
' 
sudo systemctl enable firewalld

sudo set-timezone Japan
sudo sed -i 's/#ja_JP.UTF-8/ja_JP.UTF-8' /etc/locale.gen
sudo locale-gen

sudo sed -i 's/#HandlePowerKey=shutdown/HandlePowerKey=suspend/' /etc/systemd/logind.conf
