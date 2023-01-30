#!/usr/local/bin/bash

START=$(pwd)

#xfce4
cd xfce4/
sh update_xconf.sh

cd $START

#packages
cd tools/packages/
sh update_pkgs.sh

cd $START

#zsh
cd basic/omzsh
sh update_diff.sh

cd $START
