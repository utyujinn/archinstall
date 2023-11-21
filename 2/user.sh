#!/bin/bash

# user settings
echo 'enter password for root'
passwd

# device name
echo U > /etc/hostname

# make user
useradd -m -g wheel -G users utyujin
echo 'enter password for user'
passwd utyujin
visudo
