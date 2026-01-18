#!/bin/bash

repo=https://aur.archlinux.org/yay.git

sudo pacman -S --needed git base-devel

echo "Installing yay AUR helper..."

if [[ -d ~/yay ]]; then
  echo "yay is already cloned"
else
  git clone $repo ~/yay
fi

cd ~/yay
makepkg -si --noconfirm
