#!/bin/bash

echo "Install cns11643 fonts"
sudo apt install fonts-cns11643-kai fonts-cns11643-sung

echo "Install powerline fonts"
sudo apt install fonts-powerline

#echo "Use patched libxft2 to fix crash while rendering color emoji"
#sudo dpkg -i libxft2-patched/libxft2_2.3.3-1local_amd64.deb

echo "Install nerd fonts for vim nerdtree plugin."
for URL in \
    https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Ubuntu.zip \
    https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip \
    https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip \
    https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Mononoki.zip
do
    mkdir -p ~/.fonts/nerdfonts
    cd ~/.fonts/nerdfonts
    wget -q -O tmp.zip $URL && unzip -o tmp.zip && rm tmp.zip
    cd -
done

echo "Install Google Noto Font to complete emoji."
# [ref] https://dwm.suckless.narkive.com/yEOaU0RO/dev-xft-bug-with-emoji
for URL in \
    https://noto-website-2.storage.googleapis.com/pkgs/Noto-hinted.zip
do
    mkdir -p ~/.fonts/google
    cd ~/.fonts/google
    wget -q -O tmp.zip $URL && unzip -o tmp.zip && rm tmp.zip
    cd -
done

fc-cache -fv

