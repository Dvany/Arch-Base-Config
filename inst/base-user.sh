#!/bin/bash

printf "Remenber enable Multilib respositories"

sudo reflector -c 'United States' -a 12 --sort rate --save /etc/pacman.d/mirrorlist

sudo pacman -Sy


sudo firewall-cmd --add-port=1025-65535/tcp --permanent
sudo firewall-cmd --add-port=1025-65535/udp --permanent
sudo firewall-cmd --reload

sudo pacman -S  mesa xorg-xsetroot hsetroot polkit-gnome xorg-xset brightnessctl alsa-utils playerctl scrot pavucontrol gpick viewnior dunst picom-ibhagwan-git cava htop ina-font tamsyn-font bdf-unifont ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid gnu-free-fonts ttf-ibm-plex ttf-liberation ttf-linux-libertine noto-fonts ttf-roboto tex-gyre-fonts ttf-ubuntu-font-family ttf-anonymous-pro ttf-cascadia-code ttf-fantasque-sans-mono ttf-fira-mono ttf-hack ttf-fira-code ttf-inconsolata ttf-jetbrains-mono ttf-monofur adobe-source-code-pro-fonts cantarell-fonts inter-font ttf-opensans gentium-plus-font ttf-junicode adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts-cjk noto-fonts-emoji lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader

localectl set-x11-keymap latam
