#!/bin/sh

nitrogen --restore

#start networkmgr

#check to see if it is running already
#this will return a line count of 1 if it is not
#val=$(ps -A | grep "/usr/local/bin/python3.9 /usr/local/bin/networkmgr" | wc -l)

#if [ $val == 1 ];
#then
#	networkmgr &
#fi

nm-applet

#lock screen and xflock4
xfce4-screensaver &

#albert
albert &

#picom
picom --config /home/alex/.config/picom/picom.conf &
#keepassxc
