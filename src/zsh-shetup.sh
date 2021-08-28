#!/bin/zsh
cd $HOME/git/arch-deploy/src/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

rm ~/.zshrc
rm ~/.vimrc
ln -s $HOME/git/arch-deploy/src/vimrc ~/.vimrc 
ln -s $HOME/git/arch-deploy/src/zshrc ~/.zshrc
ln -s $HOME/git/arch-deploy/src/aliasrc ~/.aliasrc
rm ~/.oh-my-zsh/themes/jispwoso.zsh-theme
ln -s $HOME/git/arch-deploy/src/jispwoso.zsh-theme ~/.oh-my-zsh/themes/jispwoso.zsh-theme
source ~/.zshrc
