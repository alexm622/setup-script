#!/bin/zsh

BRIGHTNESS=$(cat ~/scripts/brightness/brightness)
echo $BRIGHTNESS
if [ $BRIGHTNESS -ge 0 ]
then
	BRIGHTNESS=$(expr $BRIGHTNESS - $(expr 65536 / 8))
	echo $BRIGHTNESS
fi
if [ $BRIGHTNESS -lt 0 ]
then
	BRIGHTNESS=0
fi

echo $BRIGHTNESS

xbrightness $BRIGHTNESS
echo $BRIGHTNESS > ~/scripts/brightness/brightness
