# If there is not Homebrew than install it
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew and install applications with bundle

declare -a BREWFILES=(
  'apps'
  'dev-tools'
  'fonts'
  'tools'
)

brew update
brew tap homebrew/bundle

for i in ${BREWFILES[@]}; do
  brew bundle --file=brew/$i
done

brew cleanup
brew cask cleanup