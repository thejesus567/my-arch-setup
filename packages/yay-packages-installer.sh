#!/bin/bash

#TODO: Condition to validate yay is installed in the system
echo "Installing yay packages..."
for package in $(cat packages/yay-packages-list); do
  sudo yay -S --needed --noconfirm $package
done
