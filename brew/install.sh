#!/bin/sh

# If there is not Homebrew than install it
if test ! $(which brew); then
  echo 'Homebrew is not found! Start to install Homebrew.'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo 'Homebrew is installed.'
fi

# Update Homebrew and install applications with bundle
brew update
brew tap homebrew/bundle
brew bundle --file=$(dirname $0)/Brewfile
brew upgrade

brew cleanup
