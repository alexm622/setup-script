#!/usr/local/bin/bash

if [ $(whoami) != root ];
then
	echo "this script needs to be run as root"
	doas sh $(pwd)/copy_essentials.sh
	return;
fi

echo "executing as root"

cp -r boot /

cp -r etc / 
