#!/bin/zsh

repo_location="/home/$(whoami)/setup-script"

if [[ $(pwd) != $repo_location ]];
then
	echo "starting setup install"

	read -q "config?Do you already have a config file (config.txt) containing your github information (y/n):"

	if [[ $config = y ]];
	then
		#read from config
		email=$(head -n 1 config.txt)
		name=$(head -n 2 config.txt)
	else
		#read from stdin
		read "email?Enter your email for github: "
		read "name?Enter your name for github: "
	fi

	#set username and password
	git config --global user.email "$email"
	git config --global user.name "$name"

	#clone this repo
	if [ ! -d "/home/$(whoami)/setup-script" ];
	then
		echo cloning repo
		git clone https://github.com/alexm622/setup-script ~/setup-script
	fi

	cd /home/$(whoami)/setup-script

	zsh ./setup.zsh
	return
fi

#start installing stuff

sh ./sdks/install.sh
