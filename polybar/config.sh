POLYBAR_THEME=polybar-8
POLYBAR_CONFIG_LOCATION=$HOME/.config/polybar
POLYBAR_TOOL_LOCATION=$HOME/.lazyTools.d/polybar
POLYBAR_CONFIG_FILE="polybar-config"

###
# Configure polybar in i3 with a theme (https://github.com/adi1090x/polybar-themes) 
##
## Clone
git clone https://github.com/adi1090x/polybar-themes
cd polybar-themes/$POLYBAR_THEME

## Encsure fonts folder
mkdir -p $HOME/.local/share/fonts

## font bitmap reconfig
rm /etc/fonts/conf.d/70-no-bitmaps.conf

## Add fonts
cp -r fonts/* $HOME/.local/share/fonts

## Reload fonts cache
fc-cache -v

## Copy config
cp -r * $POLYBAR_CONFIG_LOCATION

## Copy custom config
cp $POLYBAR_TOOL_LOCATION/$POLYBAR_CONFIG_FILE $POLYBAR_CONFIG_LOCATION/config.ini
## Launch script
$POLYBAR_CONFIG_LOCATION/launch.sh

###
# Clean
###
cd ../../
rm -rf polybar-themes
