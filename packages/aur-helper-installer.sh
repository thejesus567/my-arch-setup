#!/bin/bash

repo=https://aur.archlinux.org/yay.git

sudo pacman -S --needed git base-devel

if [[ -d ~/yay ]]; then
  echo "yay already cloned"
else
  git clone $repo ~/yay
fi

cd ~/yay
makepkg -si --noconfirm
