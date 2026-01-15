#!/bin/bash

# Packages
echo "Installing packages..."
for package in $(cat packages/packages-list); do
  sudo pacman -S --needed --noconfirm $package
done

# AUR
echo "Installing yay AUR helper..."
./packages/aur-helper-installer.sh

# Build of DWM
echo "Setting up DWM (thejesus567)..."
./packages/dwm-installer.sh

echo "Setting up vi..."
./packages/vi-installer.sh
