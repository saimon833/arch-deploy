#!/usr/bin/zsh
sudo pacman -S nvidia-dkms nvidia-utils xorg nvidia-settings xorg xorg-xinit flameshot nemo pavucontrol eog evince bspwm sxhkd alacritty nitrogen ranger ueberzug
paru -S polybar pacman-contrib ttf-font-awesome siji-git betterlockscreen j4-dmenu-desktop
ln -s $HOME/git/arch-deploy/src/bspwm/xinitrc $HOME/.xinitrc
mkdir $HOME/.config/alacritty/
ln -s $HOME/git/arch-deploy/src/bspwm/alacritty.yml $HOME/.config/alacritty/alacritty.yml
mkdir $HOME/.config/bspwm
ln -s $HOME/git/arch-deploy/src/bspwm/bspwmrc $HOME/.config/bspwm/bspwmrc
mkdir $HOME/.config/sxhkd
ln -s $HOME/git/arch-deploy/src/bspwm/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
mkdir $HOME/.config/polybar
ln -s $HOME/git/arch-deploy/src/bspwm/config $HOME/.config/polybar/config
ln -s $HOME/git/arch-deploy/src/bspwm/launch.sh $HOME/.config/polybar/launch.sh
chmod +x $HOME/.config/polybar/launch.sh
mkdir $HOME/.config/gtk-3.0/
cp $HOME/git/arch-deploy/src/settings.ini $HOME/.config/gtk-3.0/settings.ini
cp $HOME/git/arch-deploy/src/gtkrc-2.0 $HOME/.gtkrc-2.0

