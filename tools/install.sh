#!/bin/bash

#neovim

cd neovim
sh neovim.sh
cd ..

#packages

cd packages
sh install.sh
cd ..

#tabbed
cd tabbed
sh install_tabbed.sh
cd ..

