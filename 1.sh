#!bin/sh

#user
echo 'enter password for root'
passwd
touch /etc/hostname
echo U > /etc/hostname
pacman -Sy vim vi
useradd -m -g wheel -G users utyujin
echo 'enter password for user'
passwd utyujin
visudo

#desktop environment
pacman -Sy xorg-server xorg-xinit
pacman -Sy lxde
touch /home/utyujin/.xinitrc
echo 'exec startlxde' > /home/utyujin/.xinitrc
sudo touch /etc/X11/xorg.conf.d/30-touchpad.conf
echo 'Section "InputClass" 
Identifier "touchpad"
Driver "libinput"
MatchIsTouchpad "on"
Option "Tapping" "on"
EndSection' > /etc/X11/xorg.conf.d/30-touchpad.conf

#command
pacman -Sy sudo

#network
pacman -Sy networkmanager network-manager-applet
systemctl enable NetworkManager

#terminal
pacman -Sy alacritty

#autologin

sudo mkdir /etc/systemd/system/getty@tty1.service.d```
sudo vim /etc/systemd/system/getty@tty1.service.d```
echo "
[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin utyujin --noclear %I $TERM
" > /etc/systemd/system/getty@tty1.service.d


#mount
echo "/dev/nvme0n1p2 /run/media/utyujin/data ntfs-3g uid=utyujin,gid=wheel,umask=0022 0 2" | sudo tee -a /mnt/data

#preparation
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/2.sh > /home/utyujin/2.sh
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/3.sh > /home/utyujin/3.sh
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/4.sh > /home/utyujin/4.sh