#!/bin/bash 

# Required XCB library used by dwm/dwmblocks. 
sudo pacman -S --needed --noconfirm libxcb

# Extra XCB utilities needed for dwmblocks-async.
sudo pacman -S --needed --noconfirm xcb-util
