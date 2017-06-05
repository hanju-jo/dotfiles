#!/bin/sh
# Thanks to appkr's dotfiles https://github.com/appkr/dotfiles

#-------------------------------------------------------------------------------
# Homebrew
#-------------------------------------------------------------------------------

# If there is not Homebrew than install it
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew and install applications with bundle
brew update
brew install mas
brew tap homebrew/bundle
brew bundle --file=$(pwd)/Brewfile
brew cleanup
brew cask cleanup

#-------------------------------------------------------------------------------
# Symlinks files to dotfiles
#-------------------------------------------------------------------------------

declare -a FILES_TO_SYMLINK=(
  
  'git/gitattributes'
  'git/gitconfig'
  'git/gitignore'

  'mackup.cfg'
  
  'osx'
  
  'vim/vim'
  'vim/vimrc'

  'zsh/alias'
  'zsh/export'
  'zsh/function'
  'zsh/path'
  'zsh/zshrc'

)

for i in ${FILES_TO_SYMLINK[@]}; do
  sourceFile="$(pwd)/$i"
  targetFile="$HOME/.$(printf "%s" "$i" | sed "s/.*\/\(.*\)/\1/g")"
  ln -fs $sourceFile $targetFile
done

#-------------------------------------------------------------------------------
# Install zsh and set Oh-my-zsh
#-------------------------------------------------------------------------------

# Check if zsh is installed. If it is:
if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
  # Install Oh My Zsh if it isn't already present
  if [[ ! -d $dir/oh-my-zsh/ ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  fi
  # Set the default shell to zsh if it isn't currently set to zsh
  if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
    chsh -s $(which zsh)
  fi
else
  brew install zsh
fi

# Install spaceship theme
npm install -g spaceship-zsh-theme

# Set zsh preferences
source $HOME/.zshrc

#-------------------------------------------------------------------------------
# Restore setting files with mackup
# https://github.com/lra/mackup
#-------------------------------------------------------------------------------

mackup restore

#-------------------------------------------------------------------------------
# Set OS X preferences
# We will run this last because this will reload the shell
#-------------------------------------------------------------------------------

source $HOME/.osx
