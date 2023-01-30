#!/usr/local/bin/bash

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
