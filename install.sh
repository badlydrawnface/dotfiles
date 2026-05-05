#!/bin/bash

function backup() {
  # an array of all the config files that need to be backed up
  files=(
    "~/.config/btop/btop.conf",
    "~/.config/cava/cava.conf",
    "~/.config/dunst/dunstrc",
    "~/.config/gtk-3.0/gtk.css",
    "~/.config/gtk-4.0/gtk.css",
    "~/.config/hypr/hyprland.conf",
    "~/.config/hypr/hyprland.lua",
    "~/.config/hypr/hypridle.conf",
    "~/.config/hypr/hyprlock.conf",
    "~/.config/hyprtoolkit.conf"
    "~/.config/kitty/kitty.conf",
    "~/.config/qt6ct/qt6ct.conf",
    "~/.config/swayosd/config",
    "~/.config/tmux/tmux.conf",
    "~/.config/vicinae/settings.json",
    "~/.config/waybar/config",
    "~/.config/waybar/style.css",
    "~/.config/wlogout/wlogout.conf",
    "~/.config/wlogout/style.css"
  )
  for file in "${files[@]}"; do
    if [ -f "$file" ]; then
      mv "$file" "$file.bak"
    fi
  done
}

# backup 
echo -e "\033[0;32mBacking up existing configuration files...\n"
backup

echo -e "\033[0;32mSetting up config files\n"
cp -r config/* ~/.config/
cp -r local/* ~/.local/
cp -r wallpapers/* ~/Pictures/

# select a theme
echo -e "\033[0;32mRunning theme switch script for the first time to set theme...\n"
local/bin/switch-theme --init

echo -e "\033[0;32mDone! Make sure to add ~/.local/bin to your PATH if you haven't already.\n"