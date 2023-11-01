#!bin/sh
sudo pacman -Sy vivaldi code xournalpp libreoffice blender obs-studio gimp evince kdeconnect firewalld fcitx5-im fcitx5-mozc fcitx5-configtool udisks2

#firewall
sudo systemctl enable firewalld

#locale
sudo timedatectl set-timezone Japan
sudo sed -i 's/#ja_JP.UTF-8/ja_JP.UTF-8' /etc/locale.gen
sudo locale-gen

#suspend
sudo sed -i 's/#HandlePowerKey=shutdown/HandlePowerKey=suspend/' /etc/systemd/logind.conf

# yay
sudo pacman -S git fakeroot binutils make gcc
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si