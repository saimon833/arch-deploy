#!/bin/zsh
cd $HOME/git/arch-deploy/src/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10
[ -d "$HOME/.local/share/fonts" ] || mkdir $HOME/.local/share/fonts
wget -O $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget -O $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget -O $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget -O $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
rm ~/.zshrc
rm ~/.vimrc
ln -s $HOME/git/arch-deploy/src/vimrc ~/.vimrc 
ln -s $HOME/git/arch-deploy/src/zshrc ~/.zshrc
ln -s $HOME/git/arch-deploy/src/aliasrc ~/.aliasrc
rm ~/.oh-my-zsh/themes/jispwoso.zsh-theme
ln -s $HOME/git/arch-deploy/src/jispwoso.zsh-theme ~/.oh-my-zsh/themes/jispwoso.zsh-theme
source ~/.zshrc
