#!/usr/local/bin/bash

function run () {
	select opt in "rust" "mvn" "R" "back"
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

