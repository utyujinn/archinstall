---
title: settings
author: a
date: 2023-10-16
image: nyakori.png
---

# install yay

```sudo pacman -S git```
```sudo pacman -S fakeroot binutils gcc make```

```git clone https://aur.archlinux.org/yay.git```
```cd yay```
```makepkg -si```


# for japanese user
## locale
to check locale
```locale -a```
and edit /etc/locale.gen
uncomment
```ja_JP.UTF-8....```
line
and, remake locale
```locale-gen```

## timezone

```sudo set-timezone Japan```

## input

```sudo pacman -S fcitx5-im fcitx5-mozc```
```sudo pacman -S fcitx5-configtool```

## font
download fonts you want and place to /usr/local/share/fonts/
and
```fc-cache```

# to use power button to suspend

go /etc/systemd

open logind.conf
change line
```#HandlePowerKey=shutdown```
to
```HandlePowerKey=suspend```
and
```sudo systemctl restart systemd-logind```

# to change how deepen of suspend

to check
```cat /sys/power/mem_sleep```

s2idle and deep

# to hibernate device

```sudo sh -c 'echo "disk" > /sys/power/state'```

# screenshot
```yay pacman -S coreshot```
```sed -i 's|gnome-screenshot -i|coreshot|g' ~/.config/openbox/lxde-rc.xml```
```openbox --reconfigure```

# audio
```sudo pacman -S alsa-utils```
