#!/bin/zsh


echo "starting setup install"

read -q "config?Do you already have a config file (config.txt) containing your github information (y/n):"

if [[ $config = y ]];
then
	#read from config
	email=$(head -n 1 config.txt)
	name=$(head -n 2 config.txt)
else
	read "email?Enter your email for github: "
	read "name?Enter your name for github: "
fi

git config --global user.email "$email"
git config --global user.name "$name"
