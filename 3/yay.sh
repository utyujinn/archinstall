#!/bin/bash

sudo pacman -S make fakeroot gcc
# yay
sudo pacman -S git fakeroot binutils make gcc
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

sudo pacman -S pkg-config flex bison
yay -S autofs
