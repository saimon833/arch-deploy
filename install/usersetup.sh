#!/usr/bin/bash
echo "Downloading paru\n"
if [ ! -d "$HOME/git" ]; then
	mkdir $HOME/git
fi
cd $HOME/git
git clone https://github.com/saimon833/arch-deploy
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd $HOME
pip3 install pigments
sudo pacman -S zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


