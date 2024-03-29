#!/bin/sh

#xprofile
cp ~/.xprofile .

# alacritty
sh alacritty/copy_config.sh

#xfce4
sh xfce4/update_xconf.sh

#awesome
sh awesome/update_awesome.sh

#picom
sh picom/update.sh

#nitrogen
sh nitrogen/update.sh

#qutebrowser
sh qutebrowser/update.sh
