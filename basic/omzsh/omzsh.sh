#!/usr/local/bin/sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

wget https://raw.githubusercontent.com/ChesterYue/ohmyzsh-theme-passion/master/passion.zsh-theme ~/.oh-my-zsh/themes/

#patch zshrc
patch ~/.zshrc ./zshrc.diff
