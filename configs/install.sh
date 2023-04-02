#!/bin/sh

#xprofile
cp .xprofile ~/.xprofile

#xfce
cp -r ./xfce4/xfconf ~/.config/xfce4/xfconf

#nitrogen
cp -r ./nitrogen/nitrogen ~/.config/nitrogen

#alacritty
cp -r ./alacritty/alacritty ~/.config/alacritty

#awesome
cp -r ./awesome/awesome ~/.config/awesome

#picom
cp -r ./picom/picom ~/.config/picom
