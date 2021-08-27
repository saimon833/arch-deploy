#!/bin/zsh
rm ~/.zshrc
rm ~/.vimrc
cp vimrc ~/.vimrc
cp zshrc ~/.zshrc
cp aliasrc ~/.aliasrc
rm ~/.oh-my-zsh/themes/jispwoso.zsh-theme
cp jispwoso.zsh-theme ~/.oh-my-zsh/themes/jispwoso.zsh-theme
source ~/.zshrc
