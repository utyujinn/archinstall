---
title: backup_efi_partition
author: a
date: 2023-10-18
image: nyakori.png
---


# 
## first, boot linux boot media

```fdisk -l```
to check disk name

```fdisk /devnvme0n1```

## copy efi partition
```cd mnt```
```mkdir origin```
```mkir target```
```mount /dev/origin_part /mnt/origin```
```mount /dev/target_part /mnt/target```

and copy all files
```rsync -avzh ./origin ./target```

## after finished all process
dont forget 
``` blkid | grep nvme0np5 >> /boot/loader/entries/arch.conf```
and edit arch.conf