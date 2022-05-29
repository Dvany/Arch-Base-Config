#!/bin/bash

ln -sf /usr/share/zoneinfo/America/Lima /etc/localtime
hwclock --systohc

echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "KEYMAP=la-latin1" >> /etc/vconsole.conf
echo "arch" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 arch.localdomain arch" >> /etc/hosts

pacman -S grub efibootmgr networkmanager bspwm sxhkd sudo rofi feh ranger kitty cava xorg xorg-xinit neovim dialog wpa_supplicant mtools dosfstools base-devel linux-headers avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack bash-completion rsync reflector acpi acpi_call tlp edk2-ovmf bridge-utils dnsmasq iptables-nft ipset firewalld acpid os-prober xf86-video-amdgpu

grub-install --target=x86_64-efi --efi-directory=/boot/EFI --bootloader-id=Arch

grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable avahi-daemon
systemctl enable tlp
systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable firewalld
systemctl enable acpid

useradd -m dvany

echo "dvany ALL=(ALL) ALL" >> /etc/sudoers.d/dvany

printf "remember to configure locale-gen and the passwords corresponding to the root user and yours, also configure initframs.conf and enable multilib repository"
