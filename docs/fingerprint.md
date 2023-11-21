---
title: fingerprint
author: a
date: 2023-10-19
image: nyakori.png
---


# setup fprintd

In my yoga760,
```sudo pacman -S fprint```
and
```yay -S libfprint-goodixtls-55x4```
is worked.

to add all finger,
```for finger in {left,right}-{thumb,{index,middle,ring,little}-finger}; do fprintd-enroll -f "$finger" "$USER"; done```

erase fingerprint
```fprintd-delete $USER```

verify fingerprint
```fpirntd-verify $USER```

# setting with pam

go /etc/pam.d/ and edit system-auth
add this line to top of the file.
```auth       sufficient                  pam_fprintd.so       max-tries=20```

# auto select user

```sudo pacman -S util-linux```

make file /etc/systemd/system/getty@tty1.service.d/autologin.conf
and write this. change username to your's.
```
[Service]
ExecStart=
ExecStart=-/sbin/agetty -o '-p -- username' --noclear --skip-login - $TERM
```

