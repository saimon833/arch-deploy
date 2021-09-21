# arch-deploy
My shitty config for Arch Linux <br>
Heavily inspired by Ermanno Ferrari https://gitlab.com/eflinux/arch-basic<br>
Amogus theme taken from https://github.com/sueperb/tasty-grubs
Wallpapers taken from https://nordthemewallpapers.com/

A small summary:

1. If needed, load your keymap
2. Refresh the servers with pacman -Syy
3. Partition the disk
4. Format the partitions
5. Mount the partitions
6. Install the base packages into /mnt (pacstrap /mnt base linux linux-firmware git vim intel-ucode (or amd-ucode))
7. Generate the FSTAB file with genfstab -U /mnt >> /mnt/etc/fstab
8. Chroot in with arch-chroot /mnt
9. Download the git repository with git clone https://github.com/saimon833/arch-deploy
10. cd git/arch-deploy/install
11. chmod +x initial_setup.sh
12. run with ./initial_setup.sh
