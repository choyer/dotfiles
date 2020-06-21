#!/bin/sh
#
# oh-my-zsh
#
# This installs oh-my-zsh
# https://github.com/robbyrussell/oh-my-zsh

echo "Downloading & installing oh-my-zsh"
curl -L http://install.ohmyz.sh | sh

echo "Downloading & installing Powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Downloading & installing zsh-autosuggtions"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

echo "Downloading & installing zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
