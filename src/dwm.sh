#!/usr/bin/zsh
if [ ! -d "$HOME/git" ]; then
	mkdir $HOME/git
fi
sudo pacman -S nvidia nvidia-utils xorg nvidia-settings xorg xorg-xinit flameshot nemo pavucontrol eog evince xautolock

git clone https://github.com/saimon833/dwm $HOME/git/dwm
git clone https://github.com/saimon833/dmenu $HOME/git/dmenu
git clone https://github.com/saimon833/slstatus $HOME/git/slstatus
git clone https://github.com/saimon833/st $HOME/git/st
git clone https://github.com/saimon833/slock $HOME/git/slock
cd $HOME/git/dwm
sudo make clean install

cd $HOME/git/dmenu
sudo make clean install

cd $HOME/git/slstatus
sudo make clean install 

cd $HOME/git/st
sudo make clean install

cd $HOME/git/slock
sudo make clean install

cp $HOME/git/arch-deploy/src/xinitrc $HOME/.xinitrc
mkdir $HOME/.config/gtk-3.0/
cp $HOME/git/arch-deploy/src/settings.ini $HOME/.config/gtk-3.0/settings.ini
cp $HOME/git/arch-deploy/src/gtkrc-2.0 $HOME/.gtkrc-2.0


