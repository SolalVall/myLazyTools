POLYBAR_THEME=hack
POLYBAR_CONFIG_LOCATION=$HOME/.config/polybar
POLYBAR_TOOL_LOCATION=$HOME/.lazyTools.d/polybar
POLYBAR_CONFIG_FILE="polybar-config"

###
# Install dependencies
###
sudo apt install pywal calc networkmanager_dmenurofi

###
# Configure polybar in i3 with a theme (https://github.com/adi1090x/polybar-themes)
##
## Clone
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git

## Execute base script
cd polybar-themes
chmod +x setup.sh
./setup.sh

## Launch theme
bash ~/.config/polybar/launch.sh --$POLYBAR_THEME
#cd polybar-themes/$POLYBAR_THEME

## Encsure fonts folder
#mkdir -p $HOME/.local/share/fonts

## font bitmap reconfig
#rm /etc/fonts/conf.d/70-no-bitmaps.conf

## Add fonts
#cp -r fonts/* $HOME/.local/share/fonts

## Reload fonts cache
#fc-cache -v

## Copy config
#cp -r * $POLYBAR_CONFIG_LOCATION

## Create symlink to default polybar config file location named config.ini (allow to modify the config file from .lazytools.d folder)
#ln -s $POLYBAR_TOOL_LOCATION/$POLYBAR_CONFIG_FILE $POLYBAR_CONFIG_LOCATION/config.ini
## Launch script
#$POLYBAR_CONFIG_LOCATION/launch.sh

###
# Clean
###
#cd ../../
#rm -rf polybar-themes
