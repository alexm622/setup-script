#!/usr/local/bin/bash

select opt in "rust" "mvn" "java" "node"
do
	case $opt in
		"rust")
			echo test;;
		*)
			echo done;;
esac
done
