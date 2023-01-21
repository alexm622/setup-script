#!/usr/local/bin/bash

select opt in "rust" "mvn" "back"
do
	case $opt in
		"rust")
			echo rust
			sh ./rust.sh;;
		"mvn")
			echo mvn
			sh ./mvn.sh;;
		*)
			break;;
	esac
done
