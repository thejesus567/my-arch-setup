#!/bin/bash

for package in $(cat packages)
do
	sudo pacman -S --needed --noconfirm $package
done
