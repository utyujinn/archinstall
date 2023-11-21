#!/bin/bash
pacman-key --init
pacman-key --populate archlinux
pacstrap -K /mnt base linux linux-firmware
pacstrap /mnt xf86-video-amdgpu amd-ucode