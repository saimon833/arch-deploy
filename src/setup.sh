#!/usr/bin/bash
cd ~
git clone https://github.com/saimon833/arch-deploy
chmod +x $HOME/arch-deploy/src/initial_setup.sh
sh -c "$HOME/arch-deploy/src/initial_setup.sh"

chmod +x $HOME/arch-deploy/src/usersetup.sh
su -c "$HOME/arch-deploy/src/usersetup.sh" - szymon

