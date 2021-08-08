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
echo root:password | chpasswd

pacman -S grub efibootmgr networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools reflector base-devel linux-headers avahi xdg-user-dirs \
xdg-utils gvfs cups hplip alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack openssh rsync acpi acpi_call tlp virt-manager \
qemu qemu-arch-extra edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft sof-firmware os-prober ntfs-3g

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable cups.service
systemctl enable sshd
systemctl enable reflector.timer
systemctl enable fstrim.timer

useradd -m szymon 
echo szymon:password | chpasswd
echo "szymon ALL=(ALL) ALL" >> /etc/sudoers.d/szymon

systemctl start NetworkManager
systemctl enable NetworkManager
pacman -Syu
pacman -S nvidia nvidia-utils xorg xorg-server gdm 
systemctl enable gdm
echo "Enabling multilib\n"
sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf
echo "Installing packages\n"
reflector -c Poland -a 6 --sort rate --save /etc/pacman.d/mirrorlist
pacman -S gnome-shell \
gnome-shell-extension-appindicator \
gnome-shell-extensions\
nemo \
bashtop \
gnome-terminal \
gnome-tweak-tool \
gnome-control-center \
eog \
evince \
vlc \
guake \
nvidia-settings \
gnome-keyring \
xournalpp \
noto-fonts-cjk \
noto-fonts-emoji \
noto-fonts \
gnome-calculator \
archlinux-wallpaper \
papirus \
file-roller \
gnome-calendar \
gnome-logs \
git \
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
lib32-libxml2 lib32-sdl2 lib32-freetype2 lib32-dbus
steam  virt-viewer
echo "Configuring nvida\n"
nvidia-xconfig
echo "Enabling & configuring libvirt\n"
# Start the Service Right now

sed -i "/unix_sock_group = \"libvirt\"/"'s/^#//' /etc/libvirt/libvirtd.conf
sed -i "/unix_sock_rw_perms = \"0770\"/"'s/^#//' /etc/libvirt/libvirtd.conf
systemctl enable libvirtd.service
sudo usermod -a -G libvirt szymon
echo "Downloading paru\n"
cd ~
mkdir git
cd git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
echo "Downloading AUR packages"
paru -S gnome-shell-extension-dash-to-dock minecraft-launcher synology-drive teams vscodium-bin nordic-darker-theme
cd ~/git
git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
cd nord-gnome-terminal/src
./nord.sh
echo "Setting grub theme"
cp -r Archlinux /usr/share/grub/themes
echo "GRUB_THEME=\"/usr/share/grub/themes/Archlinux/theme.txt\"" >> /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
echo "Now you can reboot"
