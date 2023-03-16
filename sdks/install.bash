#!/usr/local/bin/bash

function run () {
	select opt in "rust" "mvn" "R" "all" "back"
	do
	case $opt in
		"rust")
			echo rust
			sh ./rust.sh;;
		"mvn")
			echo mvn
			sh ./mvn.sh;;
		"R")
			echo R
			sh ./R.sh;;
		"all")
			all;;
		*)
			break;;
		esac
	done
}

function all (){
		sh ./rust.sh
		sh ./mvn.sh
		sh ./R.sh
		return
}

