#!/bin/sh

#xprofile
cp .xprofile ~/.xprofile

#xfce
cp -r ./xfce4/xfconf ~/.config/xfce4/

#nitrogen
cp -r ./nitrogen/nitrogen ~/.config/

#alacritty
cp -r ./alacritty/alacritty ~/.config/

#awesome
cp -r ./awesome/awesome ~/.config/

#picom
cp -r ./picom/picom ~/.config/

#nvim
cp -r ./neovim/nvim ~/.config/
