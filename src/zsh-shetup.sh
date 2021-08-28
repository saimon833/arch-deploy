#!/bin/zsh
rm ~/.zshrc
rm ~/.vimrc
ln -s $HOME/git/arch-deploy/src/vimrc ~/.vimrc 
ln -s $HOME/git/arch-deploy/src/zshrc ~/.zshrc
ln -s $HOME/git/arch-deploy/src/aliasrc ~/.aliasrc
rm ~/.oh-my-zsh/themes/jispwoso.zsh-theme
ln -s $HOME/git/arch-deploy/src/jispwoso.zsh-theme ~/.oh-my-zsh/themes/jispwoso.zsh-theme
source ~/.zshrc
