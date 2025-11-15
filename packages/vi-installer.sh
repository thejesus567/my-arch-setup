#!/bin/bash

# Text editor
sudo pacman -S --needed --noconfirm vi

# Symlink (TODO: add condition if symlink already exist)
sudo ln -s /usr/bin/vim /usr/bin/vi

