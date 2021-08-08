#!/bin/zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
rm ~/.zshrc
rm ~/.vimrc
cp vimrc ~/.vimrc
cp zshrc ~/.zshrc
cp aliasrc ~/.aliasrc
rm ~/.oh-my-zsh/themes/jispwoso.zsh-theme
cp ispwoso.zsh-theme ~/.oh-my-zsh/themes/jispwoso.zsh-theme
source .zshrc

