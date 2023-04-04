#!/bin/sh

#remove any prior configs
rm -rf ~/.config/nvim > /dev/null

#make link
mkdir ~/.config/nvim
ln * ~/.config/nvim
