#!/usr/bin/bash
pacman -S nvidia nvidia-utils xorg xorg-server gdm 
systemctl enable gdm

pacman -S gnome-shell \
gnome-shell-extension-appindicator \
gnome-shell-extensions\
nemo \
gnome-terminal \
gnome-tweak-tool \
gnome-control-center \
eog \
evince \
nvidia-settings \
gnome-keyring \
gnome-calculator \
file-roller 
echo "Configuring nvida\n"
nvidia-xconfig

echo "Downloading AUR packages"
paru -S gnome-shell-extension-dash-to-dock minecraft-launcher synology-drive teams vscodium-bin nordic-darker-theme
cd ~/git
git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
cd nord-gnome-terminal/src
./nord.sh