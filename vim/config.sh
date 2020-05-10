#!/bin/bash
VIM_CONFIG_LOCATION=$HOME/.vim
VIM_TOOL_LOCATION=$HOME/.lazyTools.d/vim
VIM_CONFIG_FILE="vimrc-config"

###
# Configure vim 
###
## Copy vimmc
cp $VIM_TOOL_LOCATION/vimrc-config $VIM_CONFIG_LOCATION/.vimrc

## Symlink to default location
ln -s $VIM_CONFIG_LOCATION/.vimrc $HOME/.vimrc
