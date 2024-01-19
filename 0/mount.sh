#!/bin/bash

source ./env.sh

mount /dev/$ROOTPART /mnt
mount --mkdir /dev/$EFIPART /mnt/boot
