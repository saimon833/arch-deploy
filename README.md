# arch-deploy
My shitty config for Arch Linux <br>
Heavily inspired by Ermanno Ferrari https://gitlab.com/eflinux/arch-basic<br>
To install Arch you need to format disk(s), pacstrap -i /mnt base linux linux-firmware vim git and generate fstab (genfstab -U /mnt >> /mnt/etc/fstab)<br>
Next you need to chroot and clone repo, and run initial\_setup.sh<br>
NOTE!<br>
initial\_setup.sh does not contain xorg or graphic drivers
