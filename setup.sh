#!/bin/sh
# Thanks to appkr's dotfiles https://github.com/appkr/dotfiles

# Installing order is the matter for these scripts
bash scripts/xcode_clt.sh  # Xcode Command Line Tools
bash scripts/brew.sh  # homebrew
bash scripts/zsh.sh  # zsh and oh-my-zsh
bash scripts/symlink.sh  # symlinks files to dotfiles
bash scripts/kr_backquote.sh  # For Korean keybindings, use backquote(`) instead of KRW sign(₩)
bash scripts/pyenv.sh  # pyenv

# Set preferences
vim +PlugInstall +qall  # Installing vim plugins
source $HOME/.osx  # Setting OSX preferences.
source $HOME/.zshrc  # Setting zsh preferences. This should be run at last because this will reload the shell
