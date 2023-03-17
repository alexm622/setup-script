#!/bin/sh

mkdir awesome

#update awesomewm
cd ~/setup-script/configs/awesome/awesome
rm *
cp ~/.config/awesome/* ~/setup-script/configs/awesome/awesome/
