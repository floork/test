#!/bin/bash

instyay(){
  # install yay (AUR helper)
            sudo pacman -Syu --noconfirm
            sudo pacman -S --noconfirm --needed git base-devel
            git clone https://aur.archlinux.org/yay-bin.git
            cd yay-bin
            makepkg -si
}

install(){
yay -S --needed --noconfirm hyprland-bin polkit-gnome ffmpeg neovim viewnior rofi pavucontrol thunar starship wl-clipboard wf-recorder swaybg grimblast-git ffmpegthumbnailer tumbler playerctl noise-suppression-for-voice thunar-archive-plugin kitty waybar-hyprland wlogout swaylock-effects sddm-git pamixer nwg-look-bin nordic-theme papirus-icon-theme dunst
}
inst(){
  git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
sudo make install
}
#instyay
inst

