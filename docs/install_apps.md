---
title: install_apps
author: a
date: 2023-10-17
image: nyakori.png
---


# Integrate development environment vscode

```sudo pacman -S code ```

# document write app

```sudo pacman -S xournal```

# office libreoffice

```sudo pacman -S libreoffice```

# simple terminal st

```yay -Syu patch```
```sudo pacman -S fakeroot make pkgconf fontconfig freetype2```
```yay -S st```

# filemanager vifm

```sudo pacman -S vifm```

# 3D modeling blender

```sudo pacman -S blender```

# recording obs-studio

```sudo pacman -S obs-studio```

# illustrate GIMP

```sudo pacman -S gimp```

# kde connect

```
sudo pacman -S kdeconnect
```
to use,
```
sudo pacman -S firewalld
sudo systemctl enable firewalld
reboot
```
```
sudo firewall-cmd
sudo firewall-cmd --permanent --zone=public --add-service=kdeconnect
sudo firewall-cmd --reload
reboot
```