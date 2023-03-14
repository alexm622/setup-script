#!/usr/local/bin/bash

START=$(pwd)

#xfce4
cd configs/
sh update_all.sh

cd $START

#packages
cd tools/packages/
sh update_pkgs.sh

cd $START

#zsh
cd basic/omzsh
sh update_diff.sh

cd $START
