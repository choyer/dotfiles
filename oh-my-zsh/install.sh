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
