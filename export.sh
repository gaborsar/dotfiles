#!/bin/bash

mkdir -p $HOME/.config/nvim
cp nvim/init.lua $HOME/.config/nvim
cp nvim/packer.lua $HOME/.config/nvim

mkdir -p $HOME/.config/sway
cp sway/config $HOME/.config/sway

mkdir -p $HOME/.config/i3status
cp i3status/config $HOME/.config/i3status
