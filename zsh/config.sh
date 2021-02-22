#!/bin/bash
ZSH_CONFIG_LOCATION=$HOME/.oh-my-zsh
ZSH_TOOL_LOCATION=$HOME/.lazyTools.d/zsh
ZSH_CONFIG_FILE="zshrc-config"

###
# Install Oh My ZSH to facilitage zsh management
###
if [[ ! -d $ZSH_CONFIG_LOCATION ]]; then
    # Download ohmyzsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    # Set zsh as default shell
    chsh -s $(which zsh)
else
    echo "[INFO] OhMyZsh already installed"
fi

###
# Configure zsh
###
## Symlink to default location
ln -s $ZSH_TOOL_LOCATION/$ZSH_CONFIG_FILE $HOME/.zshrc
