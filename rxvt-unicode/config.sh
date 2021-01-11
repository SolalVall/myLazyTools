#!/bin/bash
URXVT_CONFIG_LOCATION=$HOME/.urvxt
URXVT_EXTENSION_LOCATION=$URXVT_CONFIG_LOCATION/ext
URXVT_TOOL_LOCATION=$HOME/.lazyTools.d/rxvt-unicode
URXVT_CONFIG_FILE="urxvt-config"

###
# Configure urxvt
###
## Ensure urxvt default config folder + extension fodler
mkdir -p $URXVT_EXTENSION_LOCATION

## Download urxvt clipboad-manager and Perl extension
sudo apt install xsel
git clone https://github.com/muennich/urxvt-perls
cp urxvt-perls/deprecated/* $URXVT_EXTENSION_LOCATION
rm -rf urxvt-perls

## Download urvt font-size extension
git clone https://github.com/majutsushi/urxvt-font-size
cp urxvt-font-size/font-size $URXVT_EXTENSION_LOCATION
rm -rf urxvt-font-size

## Symlink urxvt config file to default location (.Xresources is the default name)
## Create symlink to default urxvt config file location named .Xresources (allow to modify the config file from .lazytools.d folder)
ln -s $URXVT_TOOL_LOCATION/$URXVT_CONFIG_FILE $HOME/.Xresources
