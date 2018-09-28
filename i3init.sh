#!/bin/bash

xrandr \
    && xrandr --output eDP1 --mode 1600x900 \
    && xrandr --output DP1 --auto --right-of eDP1 \
    && feh --bg-scale ~/Pictures/minimalism-calm-waters-finland-mist-water-bridge-2K-wallpaper.jpg

xrdb -load ~/Development/base16-xresources/xresources/base16-gruvbox-light-hard.Xresources
