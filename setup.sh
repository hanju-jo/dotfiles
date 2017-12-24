#!/bin/sh
# Thanks to appkr's dotfiles https://github.com/appkr/dotfiles

# Installing order is the matter for these scripts
bash scripts/brew.sh  # homebrew
bash scripts/zsh  # zsh and oh-my-zsh
bash scripts/symlink.sh  # symlinks files to dotfiles

#-------------------------------------------------------------------------------
# Set zsh preferences
# We will run this last because this will reload the shell
#-------------------------------------------------------------------------------

# Set zsh preferences
source $HOME/.zshrc

#-------------------------------------------------------------------------------
# Set OS X preferences
# We will run this last because this will reload the shell
#-------------------------------------------------------------------------------

source $HOME/.osx


#-------------------------------------------------------------------------------
# Set vim
#-------------------------------------------------------------------------------
vim +PlugInstall +qall

