#!/bin/bash

yay -S hyprland-bin polkit-gnome ffmpeg neovim viewnior       \
rofi pavucontrol thunar starship wl-clipboard wf-recorder     \
swaybg grimblast-git ffmpegthumbnailer tumbler playerctl      \
noise-suppression-for-voice thunar-archive-plugin kitty       \
waybar-hyprland wlogout swaylock-effects sddm-git pamixer     \
nwg-look-bin nordic-theme papirus-icon-theme dunst


echo "[Autologin]" | sudo tee /etc/sddm.conf
echo "User=floork" | sudo tee -a /etc/sddm.conf
echo "Session=hyprland" | sudo tee -a /etc/sddm.conf

sudo groupadd autologin
sudo usermod -aG autologin floork
