#!/usr/bin/zsh
sudo pacman -S xorg xorg xorg-xinit \
flameshot pavucontrol zathura nomacs bspwm sxhkd alacritty nitrogen \
ranger ueberzug lxsession parcellite rofi dunst lightdm lightdm-gtk-greeter \
mesa vulkan-radeon
paru -S polybar pacman-contrib ttf-font-awesome siji-git 
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles xinit
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles alacritty
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles bspwm
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles sxhkd 
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles polybar
chmod +x $HOME/.config/polybar/launch.sh
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles gtk2.0
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles gtk-3.0
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles picom
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles rofi
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles dunst
