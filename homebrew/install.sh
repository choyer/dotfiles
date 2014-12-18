#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null 2>&1
fi

# Homebrew taps
TAPS=(
homebrew/dupes
homebrew/versions
josegonzalez/php
caskroom/cask
caskroom/fonts
caskroom/versions
)

# Homebrew Formulas
FORMULAS=(
coreutils
zsh
archey
wget
z
git
gh
imagemagick
todo-txt
openssl
caskroom/cask/brew-cask
)

# Homebrew casks
CASKS=(
alfred
caffeine
cd-to
nvalt
firefox
opera
google-chrome
dash
imagealpha
imageoptim
iterm2
sequel-pro
atom
sublime-text3
the-unarchiver
transmit
vlc
betterzipql
qlcolorcode
qlmarkdown
qlstephen
quicklook-csv
quicklook-json
webp-quicklook
transmission
appcleaner
istat-menus
vmware-fusion
harvest
trim-enabler
drobo-dashboard
)

#================================================================================

echo "Brew update ... "
brew update
echo "Done."

echo "Brew tap & install ... "
brew tap ${TAPS[@]} && brew install ${FORMULAS[@]}
echo "Done."


#echo " Changing shell...."
# sudo echo "/usr/local/bin/zsh" >> /etc/shells && chsh -s /usr/local/bin/zsh

echo "Brew cask install ... "
echo

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Create the Caskroom folder and chown it to avoid permission problems
sudo mkdir /etc/Caskroom
sudo chown -R $(whoami) /etc/Caskroom

export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/etc/Caskroom"
# Put everything into system Applications folder
brew cask install ${CASKS[@]} && brew cask alfred link
echo "Done."

# 1Password form the Apple Store needs Chrome to be in /Applications
# Known issues #3
# https://guides.agilebits.com/1password-mac-kb/5/en/topic/browser-validation-failed

echo "Brew cleanup ... "
brew cleanup
echo "Done."

echo "Brew cask cleanup ... "
brew cask cleanup
echo "Done."
