#!/bin/bash
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/env.sh > env.sh

curl https://raw.githubusercontent.com/utyujinn/archinstall/master/1/kernel.sh > kernel.sh
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/1/bootloader.sh > bootloader.sh

#preparation
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/chroot.sh > /root/chroot.sh
curl https://raw.githubusercontent.com/utyujinn/archinstall/master/1.sh > /mnt/1.sh
