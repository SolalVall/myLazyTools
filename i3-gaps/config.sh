#!/bin/bash
I3_CONFIG_LOCATION=$HOME/.config/i3
I3_TOOL_LOCATION=$HOME/.lazyTools.d/i3-gaps
I3_CONFIG_FILE="i3gaps-config"
I3_WALLPAPER="base.jpeg"
I3_LOCK_WALLPAPER="lock.png"

###
# Install necessaries stuff used in i3 config
###
# Install feh used for wallpaper
sudo apt install feh -y
# Install i3lock used to lock the screen (imagemagick cointains 'convert')
sudo apt install i3lock scrot imagemagick -y
# Install wallpapers
mkdir -p $HOME/Images
cp $I3_TOOL_LOCATION/{$I3_WALLPAPER,$I3_LOCK_WALLPAPER} $HOME/Images

###
# Configure i3
###
# Set urxvt as default terminal
update-alternatives --set x-terminal-emulator /usr/bin/urxvt
# Configure lock script
ln -s $I3_TOOL_LOCATION/i3gaps-lock $I3_CONFIG_LOCATION

###
# Symlink
###
ln -s $I3_TOOL_LOCATION/$I3_CONFIG_FILE $I3_CONFIG_LOCATION/config
