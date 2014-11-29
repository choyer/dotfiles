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
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
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
zsh
wget
z
git
node
gh
imagemagick
todo-txt
openssl
php54-mcrypt
caskroom/cask/brew-cask
josegonzalez/php/composer
)

# Homebrew casks
CASKS=(
alfred
caffeine
font-inconsolata-dz-for-powerline
font-inconsolata
font-source-code-pro
font-droid-sans-mono
font-meslo-lg
nvalt
firefox
firefox-aurora
firefox-nightly
webkit-nightly
opera
opera-beta
google-chrome
google-chrome-canary
dash
imagealpha
imageoptim
iterm2
sequel-pro
divvy
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
)

#================================================================================

brew update

brew tap ${TAPS[@]} && brew install ${FORMULAS[@]}

#echo " Changing shell...."
# sudo echo "/usr/local/bin/zsh" >> /etc/shells && chsh -s /usr/local/bin/zsh


# Put everything into system Applications folder
brew cask install --appdir="/Applications" ${CASKS[@]} && brew cask alfred link

# 1Password form the Apple Store needs Chrome to be in /Applications
# Known issues #3
# https://guides.agilebits.com/1password-mac-kb/5/en/topic/browser-validation-failed


echo "Next steps: license paid apps. Install others from App Store."

brew cleanup

exit 0
