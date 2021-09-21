#!/bin/zsh
cd $HOME/git/arch-deploy/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10
[ -d "$HOME/.local/share/fonts" ] || mkdir -p $HOME/.local/share/fonts
wget -O $HOME/.local/share/fonts/MesloLGS\ NF\ Regular.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget -O $HOME/.local/share/fonts/MesloLGS\ NF\ Bold.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget -O $HOME/.local/share/fonts/MesloLGS\ NF\ Italic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget -O $HOME/.local/share/fonts/MesloLGS\ NF\ Bold\ Italic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles/ ranger
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles/ vim
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles/ zsh
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles/ neofetch
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles/ htop
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles/ xdg-dirs
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles/ scripts
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles/ nemo
source ~/.zshrc
