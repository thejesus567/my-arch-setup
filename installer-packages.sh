#!/bin/bash

echo "Installing packages..."
for package in $(cat packages/packages-list); do
  sudo pacman -S --needed --noconfirm $package
done

echo "Setting up DWM (thejesus567)..."
./packages/dwm-installer.sh
