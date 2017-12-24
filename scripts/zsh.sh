# Check if zsh is installed. If it is:
if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
  # Install Oh My Zsh if it isn't already present
  if [[ ! -d $HOME/.oh-my-zsh/ ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  fi
  # Set the default shell to zsh if it isn't currently set to zsh
  if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
    chsh -s $(which zsh)
  fi
else
  brew install zsh
fi

# Install bullet-train theme
wget https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme
mv bullet-train.zsh-theme ~/.oh-my-zsh/custom/themes/bullet-train.zsh-theme

# Install plugin 'alias-tips'
wget https://github.com/djui/alias-tips/archive/master.zip
unzip master.zip && mv alias-tips-master ~/.oh-my-zsh/custom/plugins/alias-tips && rm master.zip
