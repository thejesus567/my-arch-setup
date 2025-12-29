#!/bin/bash

repo="https://github.com/thejesus567/dwm.git"

if command -v git >/dev/null 2>&1; then
  echo "git is already installed"
else
  echo "installing git..."
  sudo pacman -S git
fi

if [ -d ~/dwm ]; then
  echo "dwm is already cloned"
else
  echo "dwm is not is home directory"
  git clone $repo ~/dwm
fi

if command -v make >/dev/null 2>&1; then
  echo "make is already installed"
else
  echo "Installing base-devel package..."
  sudo pacman -S base-devel
fi

echo "Compiling dwm..."
cd ~/dwm
sudo make clean install
