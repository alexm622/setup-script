#!/bin/zsh

BRIGHTNESS=$(cat ~/scripts/brightness/brightness)
echo $BRIGHTNESS
OVERAGE=$(expr 65536 + $(expr 65536 / 8))
echo $OVERAGE
if [ $BRIGHTNESS -lt $OVERAGE ]
then
	BRIGHTNESS=$(expr $BRIGHTNESS + $(expr 65536 / 8))
	echo $BRIGHTNESS
fi
if [ $BRIGHTNESS -gt 65535 ]
then
	BRIGHTNESS=65535
fi

echo $BRIGHTNESS

xbrightness $BRIGHTNESS
echo $BRIGHTNESS > ~/scripts/brightness/brightness
