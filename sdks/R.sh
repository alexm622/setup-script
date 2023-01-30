#!/usr/local/bin/bash

#install language server and colored output

export MAKE="make -j4"

sudo R CMD INSTALL colorout languageserver

unset MAKE
