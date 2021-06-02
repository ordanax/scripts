#!/usr/bin/env bash

sudo pacman -S --noconfirm --needed wget curl git 
git clone https://aur.archlinux.org/yay.git
cd yay
# makepkg -si
makepkg -si --skipinteg
cd ..
rm -rf yay
