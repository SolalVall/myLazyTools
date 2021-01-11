#!/bin/bash
VIM_CONFIG_LOCATION=$HOME/.vim
VIM_TOOL_LOCATION=$HOME/.lazyTools.d/vim
VIM_CONFIG_FILE="vimrc-config"

###
# Configure vim
###
## Symlink to default location
ln -s $VIM_TOOL_LOCATION/$VIM_CONFIG_FILE $HOME/.vimrc
