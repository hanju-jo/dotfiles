DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# echo "Home $HOME"
# echo "Dir $DIR"

echo "Set Git"
ln -s $DIR/gitconfig $HOME/.gitconfig
ln -s $DIR/gitignore $HOME/.gitignore

echo "Set Vim"
ln -s $DIR/vimrc $HOME/.vimrc
ln -s $DIR/vim $HOME/.vim

echo "Set Zsh"
ln -s $DIR/zshrc $HOME/.zshrc
