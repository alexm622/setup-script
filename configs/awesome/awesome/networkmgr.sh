#!/bin/sh
val=$(ps -A | grep "/usr/local/bin/python3.9 /usr/local/bin/networkmgr" | wc -l)

if [ val == 1 ];
then
	networkmgr
fi

