#!/usr/bin/bash
ln -sf /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
sed -i '390s/.//' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "ArchBox" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 ArchBox.localdomain Archbox" >> /etc/hosts
echo root password 
passwd

pacman -S grub efibootmgr networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools reflector base-devel linux-headers avahi xdg-user-dirs \
xdg-utils gvfs cups hplip alsa-utils pulseaudio virt-manager \
qemu qemu-arch-extra edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft sof-firmware os-prober ntfs-3g virt-viewer firewalld mc openssh

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
reflector -c Poland -a 6 --sort rate --protocol https --save /etc/pacman.d/mirrorlist

systemctl enable cups.service
systemctl enable sshd
systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable NetworkManager
systemctl enable firewalld.service

useradd -m szymon 
echo szymon password 
passwd szymon
echo "szymon ALL=(ALL) ALL" >> /etc/sudoers.d/szymon

pacman -Syu

echo "Enabling multilib\n"
sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf
pacman -Syu
echo "Installing packages\n"
pacman -S bashtop \
vlc \
xournalpp \
noto-fonts-cjk \
noto-fonts-emoji \
noto-fonts \
archlinux-wallpaper \
papirus-icon-theme \
wget \
curl \
texlive-most \
texlive-latexextra \
texmaker \
python-pip \
firefox \
thunderbird \
veracrypt \
discord \
lutris \
wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \
lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \
ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 \
lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader \
lib32-libxml2 lib32-sdl2 lib32-freetype2 lib32-dbus \
steam 

echo "Enabling & configuring libvirt\n"
# Start the Service Right now

sed -i "/unix_sock_group = \"libvirt\"/"'s/^#//' /etc/libvirt/libvirtd.conf
sed -i "/unix_sock_rw_perms = \"0770\"/"'s/^#//' /etc/libvirt/libvirtd.conf
systemctl enable libvirtd.service
sudo usermod -aG libvirt szymon
