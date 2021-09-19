#!/usr/bin/zsh
sudo pacman -S nvidia-dkms nvidia-utils xorg nvidia-settings xorg xorg-xinit flameshot nemo pavucontrol eog evince bspwm sxhkd alacritty nitrogen ranger ueberzug dmenu
paru -S polybar pacman-contrib ttf-font-awesome siji-git betterlockscreen j4-dmenu-desktop
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles xinit
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles alacritty
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles bspwm
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles sxhkd 
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles polybar
chmod +x $HOME/.config/polybar/launch.sh
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles gtk2.0
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles gtk-3.0
stow -t $HOME/ -d $HOME/git/arch-deploy/dotfiles picom
