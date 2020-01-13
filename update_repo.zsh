#!/bin/zsh

# Set directory where script is being called
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Copy the files into the repository - Called from bin to prevent MacOS rebind of cp -[options] to cp -[options]i which always asks before overwrite
/bin/cp -rf $HOME/.zsh $DIR/
/bin/cp -f $HOME/.vimrc $DIR/.vimrc
/bin/cp -f $HOME/.zshrc $DIR/.zshrc
/bin/cp -f $HOME/.config/nvim/init.vim $DIR/.config/nvim/init.vim
