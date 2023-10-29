#!bin/sh
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