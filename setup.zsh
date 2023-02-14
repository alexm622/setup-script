#!/bin/zsh

function all () {
	echo installing all
	#first install packages
	sh tools/packages/install.sh
	
	#and the essentials
	sh low_level/copy_essentials.sh

	#zsh
	sh basic/omzsh/nvim-qt.sh
	sh basic/omzsh/omzsh.sh
	sh basic/omzsh/update_diff.sh


	sh tools/neovim/neovim.sh
	sh tools/nano.sh

	bash -c "source sdks/install.bash; all"

	#copy xfce4 config
	rm -r ~/.config/xfce4/
	cp -r xfce4/ ~/.config/xfce4
	
}


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

select opt in "sdk" "low_level" "basic" "xfce4" "tools" "all" "Quit"
do
	case $opt in
		"sdk")
			echo sdk
			bash -c "source sdks/install.bash; run";;
		"low_level")
			echo low level;;
		"basic")
			echo basic;;
		"xfce4")
			echo xfce4;;
			#do something
		"tools")
			echo tools;;
		"all")
			echo all
			all ;;
		*)
			break;;
	esac
done
