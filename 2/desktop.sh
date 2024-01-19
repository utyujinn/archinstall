#!/bin/bash

#desktop environment
pacman -Sy xorg-server xorg-xinit
pacman -Sy i3
echo 'exec i3' > /home/utyujin/.xinitrc

# touchpad setting
echo 'Section "InputClass" 
Identifier "touchpad"
Driver "libinput"
MatchIsTouchpad "on"
Option "Tapping" "on"
EndSection' > /etc/X11/xorg.conf.d/30-touchpad.conf
