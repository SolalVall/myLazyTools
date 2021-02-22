#!/bin/bash
COMPTON_CONFIG_LOCATION=$HOME/.compton.conf
COMPTON_TOOL_LOCATION=$HOME/.lazyTools.d/compton
COMPTON_CONFIG_FILE="comptonrc-config"

###
# Configure compton
###
## Symlink to default location
ln -s $COMPTON_TOOL_LOCATION/$COMPTON_CONFIG_FILE $COMPTON_CONFIG_LOCATION
