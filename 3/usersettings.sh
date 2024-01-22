#!/bin/bash

#locale
timedatectl set-timezone Japan

# dotfiles
git clone https://github.com/utyujinn/dotfiles
sh dotfiles/sh/install.sh
