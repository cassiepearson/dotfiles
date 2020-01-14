#!/bin/zsh

# Set directory where script is being called
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Copy the files into the repository - Called from bin to prevent MacOS rebind of cp -[options] to cp -[options]i which always asks before overwrite
/bin/cp -rf $DIR/.zsh $HOME/ 
/bin/cp -f $DIR/.vimrc  $HOME/.vimrc 
/bin/cp -f $DIR/.zshrc $HOME/.zshrc
/bin/cp -f $DIR/.config/nvim/init.vim $HOME/.config/nvim/init.vim
/bin/cp -f $HOME/.zsh/templates/.ducky_reset $HOME/.ducky

