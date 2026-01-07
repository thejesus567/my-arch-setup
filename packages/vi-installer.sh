#!/bin/bash

vi_path="/usr/bin/vi"

# Text editor
if command -v vi >/dev/null 2>&1; then
  echo "vi is already installed"
else
  echo "Installing vi..."
  sudo pacman -S --needed --noconfirm vi
fi

if [[ -L $vi_path ]]; then
  echo "Symlink exists in ${vi_path}"
else
  sudo ln -s /usr/bin/vim /usr/bin/vi
fi
