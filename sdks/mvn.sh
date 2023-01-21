#!/usr/local/bin/bash

#start installing mvn
cd /tmp
mkdir mvn_installer
cd mvn_installer

MVN_VERSION=3.8.7

#get maven¸
wget https://dlcdn.apache.org/maven/maven-3/$MVN_VERSION/binaries/apache-maven-$MVN_VERSION-bin.tar.gz
tar -xvf apache-maven-$MVN_VERSION-bin.tar.gz

#is it already in path?

if which mvn || [ -d /usr/local/apache-maven ];
then
	echo "maven is already installed"
	read -p "do you want to remove it (y/n):" remove
	if [ $remove = y ];
	then
		if [ $(whoami) != root ];
		then
			echo "please elevate me :)"
			if which doas ;
			then
				doas sh -c "rm -r /usr/local/apache-maven && cp -r apache-maven-$MVN_VERSION /usr/local/apache-maven"
			else
				sudo sh -c "rm -r /usr/local/apache-maven && cp -r apache-maven-$MVN_VERSION /usr/local/apache-maven"
			fi
		else
			rm -r /usr/local/apache-maven
			cp apache-maven-$mvn_version /usr/local/apache-maven
		fi
	fi
else
	if [ $(whoami) != root ];
	then
		echo "please elevate me :)"
		if which doas ;
		then
			doas sh -c "cp -r apache-maven-$MVN_VERSION /usr/local/apache-maven"
		else
			sudo sh -c "cp -r apache-maven-$MVN_VERSION /usr/local/apache-maven"
		fi
	else
		cp apache-maven-$mvn_version /usr/local/apache-maven
	fi
	#add it to the path
	ADD_ME="PATH=\$PATH:/usr/local/apache-maven/bin/"
	$(export $ADD_ME)
	echo "$ADD_ME" >> .zshrc
fi
