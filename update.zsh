#!/bin/zsh

# Set directory where script is being called
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Copy the files into the repository
cp -rf $HOME/.zsh $DIR/.zsh
cp -f $HOME/.vimrc $DIR/.vimrc
cp -f $HOME/.zshrc $DIR/.zshrc
cp -f $HOME/.config/nvim/init.vim $DIR/.config/nvim/init.vim
