#!/usr/local/bin/sh

if [ $(whoami) != root ];
then
	echo "please elevate me :)"
	C_DIR=$(pwd)
	if which doas ;
	then
		doas sh "$C_DIR/neovim.sh"
		return
	else
		sudo sh "$C_DIR/neovim.sh"
		return
	fi
fi

cd tmp
mkdir neovim
cd neovim

wget https://github.com/neovim/neovim/archive/refs/tags/stable.tar.gz

gh release download -R equalsraf/neovim-qt  -A tar.gz

tar -xvf *.tar.gz

#install neovim

cd nvim-stable

mkdir build

cd build

cmake ..

LROCK=luarocks51 install

$LROCK mpack
$LROCK lpeg

if which nvim;
then
	gmake uninstall
fi

gmake -j8 CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=/usr/local/bin/nvim install

#install nvim-qt

cd /tmp/neovim

NVIM_QT=$(ls -ald */ | awk '{print $9}' | grep neovim-qt)

cd $NVIM_QT

mkdir build

cd build


cmake -DCMAKE_BUILD_TYPE=Release ..

cmake --build . -j8

gmake -j4

if which nvim-qt ;
then
	rm -rf $(which nvim-qt)
fi

cd bin

cp nvim-qt /usr/local/bin/

#pip nvim

pip-3.9 install neovim
