#!bin/sh
passwd
touch /etc/hostname
echo U > hostname
pacman -S vim vi
useradd -m -g wheel -G users utyujin
passwd utyujin
visudo

pacman -S xorg-server xorg-xinit
pacman -S lxde
touch .xinitrc
echo 'exec startlxde' > a
sudo touch /etc/X11/xorg.conf.d/30-touchpad.conf
echo 'Section "InputClass" 
Identifier "touchpad"
Driver "libinput"
MatchIsTouchpad "on"
Option "Tapping" "on"
EndSection' > a

pacman -S networkmanager network-manager-applet
systemctl enable NetworkManager

pacman -S alacritty

curl https://raw.githubusercontent.com/utyujinn/archinstall/master/2.sh > /home/utyujin/2.sh
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/3.sh > /home/utyujin/3.sh
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/4.sh > /home/utyujin/4.sh