---
title: pacman
author: a
date: 2023-10-20
image: nyakori.png
---


## list

To see all packages
```pacman -Q```

To see only installed by user packages
```pacman -Qe```

To see dont depending packages
```pacman -Qdtq```

## Sync

To install package
```pacman -S package_name```

To remove package with dependencies
```pacman -Rcns package_name```

To remove not depending packages
```pacman -R $(pacman -Qdtq)```