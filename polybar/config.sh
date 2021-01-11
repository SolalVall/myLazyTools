POLYBAR_THEME=forest
POLYBAR_CONFIG_LOCATION=$HOME/.config/polybar
POLYBAR_TOOL_LOCATION=$HOME/.lazyTools.d/polybar
POLYBAR_BASE_CONFIG_FILE="polybar-config-base"
POLYBAR_BAR_CONFIG_FILE="polybar-config-bar"
POLYBAR_MODULE_CONFIG_FILE="polybar-config-modules"
POLYBAR_COLOR_CONFIG_FILE="polybar-config-colors"

###
# Configure polybar in i3 with a theme (https://github.com/adi1090x/polybar-themes)
##
## Clone
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git

## Execute base script
cd polybar-themes
chmod +x setup.sh
./setup.sh

###
# Overwite theme with our config
###
ln -sfn $POLYBAR_TOOL_LOCATION/$POLYBAR_BASE_CONFIG_FILE $POLYBAR_CONFIG_LOCATION/$POLYBAR_THEME/config.ini
ln -sfn $POLYBAR_TOOL_LOCATION/$POLYBAR_BAR_CONFIG_FILE $POLYBAR_CONFIG_LOCATION/$POLYBAR_THEME/bar.ini
ln -sfn $POLYBAR_TOOL_LOCATION/$POLYBAR_MODULE_CONFIG_FILE $POLYBAR_CONFIG_LOCATION/$POLYBAR_THEME/modules.ini
ln -sfn $POLYBAR_TOOL_LOCATION/$POLYBAR_COLOR_CONFIG_FILE $POLYBAR_CONFIG_LOCATION/$POLYBAR_THEME/colors.ini

###
# Launch the $POLYBAR_THEME
###
bash ~/.config/polybar/launch.sh --"$POLYBAR_THEME" 2>/dev/null

###
# Clean
###
cd ..
rm -rf polybar-themes
