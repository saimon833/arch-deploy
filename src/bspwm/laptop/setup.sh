#!/usr/bin/zsh
sudo pacman -S xorg xorg xorg-xinit flameshot nemo pavucontrol eog evince bspwm sxhkd alacritty nitrogen xautolock 

paru -S polybar pacman-contrib ttf-font-awesome siji-git betterlockscreen j4-dmenu-desktop
ln -s $HOME/git/arch-seploy/src/bspwm/laptop/xinitrc .xinitrc
mkdir $HOME/.config/alacritty/
ln -s $HOME/git/arch-seploy/src/bspwm/laptop/alacritty.yml $HOME/.config/alacritty/alacritty.yml
install -Dm755 $HOME/git/arch-seploy/src/bspwm/laptop/bspwmrc $HOME/.config/bspwm/bspwmrc
install -Dm644 $HOME/git/arch-seploy/src/bspwm/laptop/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
mkdir $HOME/.config/polybar
ln -s $HOME/git/arch-seploy/src/bspwm/laptop/config $HOME/.config/polybar/config
ln - $HOME/git/arch-seploy/src/bspwm/laptop/launch.sh $HOME/.config/polybar/launch.sh
chmod +x $HOME/.config/polybar/launch.sh
mkdir $HOME/.config/gtk-3.0/
cp $HOME/git/arch-deploy/src/settings.ini $HOME/.config/gtk-3.0/settings.ini
cp $HOME/git/arch-deploy/src/gtkrc-2.0 $HOME/.gtkrc-2.0

