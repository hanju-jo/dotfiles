declare -a FILES_TO_SYMLINK=(
  'git/gitattributes'
  'git/gitconfig'
  'git/gitignore'
  'mackup.cfg'
  'osx'
  'vim/vimrc'
  'zsh/alias'
  'zsh/export'
  'zsh/path'
  'zsh/zshrc'
)

for i in ${FILES_TO_SYMLINK[@]}; do
  sourceFile="$(pwd)/$i"
  targetFile="$HOME/.$(printf "%s" "$i" | sed "s/.*\/\(.*\)/\1/g")"
  ln -fs $sourceFile $targetFile
done
