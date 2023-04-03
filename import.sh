#!/bin/bash

mkdir -p nvim
cp $HOME/.config/nvim/init.lua nvim
cp $HOME/.config/nvim/packer.lua nvim

mkdir -p sway
cp $HOME/.config/sway/config sway

mkdir -p i3status
cp $HOME/.config/i3status/config i3status
