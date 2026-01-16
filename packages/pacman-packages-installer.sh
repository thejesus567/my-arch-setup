#!/bin/bash

echo "Installing pacman packages..."
for package in $(cat packages/packages-list); do
  sudo pacman -S --needed --noconfirm $package
done
