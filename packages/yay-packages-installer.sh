#!/bin/bash

if command -v yay >/dev/null 2>&1; then
  echo "yay is already installed"
else
  ./aur-helper-installer.sh
fi

echo "Installing yay packages..."
for package in $(cat packages/yay-packages-list); do
  sudo yay -S --needed --noconfirm $package
done
