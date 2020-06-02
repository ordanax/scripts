#!/usr/bin/env bash

sudo pacman -S --noconfirm --needed wget curl git 
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
# makepkg -si
makepkg -si --skipinteg
cd ..
rm -rf yay-bin
