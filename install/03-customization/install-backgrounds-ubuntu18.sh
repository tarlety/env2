#!/bin/bash

## update login background

echo '''how to update gdm login background:
#lockDialogGroup {
  background: #111111 url(file:///home/user/wallpapers/lockDialogGroup.jpg);
  height: 100%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover; }
'''

sudo vi /usr/share/gnome-shell/theme/ubuntu.css

## update grub background

echo '''how to update grub background:
1. $ sudo cp wallpaper.png /boot/grub
2. $ sudo update-grub
'''

## update plymouth

echo '''how to update plymouth:
1. choose a plymouth here: "https://www.gnome-look.org/browse/cat/108/order/latest/"
2. how to install a plymouth: "https://askubuntu.com/questions/770295/how-can-i-install-paw-ubuntu-plymouth-theme-on-ubuntu-16-04/870092#870092"
- sudo cp -a paw /usr/share/plymouth/themes
- sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/paw/paw.plymouth 100
- sudo update-alternatives --config default.plymouth
- sudo update-initramfs -u
'''

## update gdm login background periodically

echo '''example to update gdm login background periodically:
1. $ crontab -e
2. 0 * * * * cd ~/Pictures/wallpapers/ ; rm lockDialogGroup.jpg ; ln -s `find -type f | sort -R | head -n1` lockDialogGroup.jpg
'''
