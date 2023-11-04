# 
```
sudo pacman -S alsamixer
```

# check device
```
cat /proc/asound/cards
```
or
```
aplay -l
```

# write config
create /etc/asound.conf
```
pcm.!default {
    type hw
    card 1
    device 0
}

ctl.!default {
    type hw           
    card 1
    device 0
}
```

# add group

edit /etc/group
before
```
audio:x:996:
```
after
```
audio:x:996:utyujin
```

# test

speaker-test -D plughw:1,0 



# references

https://osmaniax.1banzaka.com/linux/thinkpad-x240%E3%81%AB%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%97%E3%81%9Farchlinux%E3%81%A7alsa%E3%82%92%E4%BD%BF%E3%81%A3%E3%81%A6%E9%9F%B3%E3%82%92%E9%B3%B4%E3%82%89%E3%81%97/5317