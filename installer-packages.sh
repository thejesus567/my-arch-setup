#!/bin/bash

for package in $(cat packages/packages-list); do
  sudo pacman -S --needed --noconfirm $package
done

./packages/dwm-installer.sh
