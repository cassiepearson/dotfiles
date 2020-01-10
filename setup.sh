#!/bin/bash

# Take package manager as argument
PCKG=$1

# Set a directory to clone
REPOS=$HOME/Repos

if [ "${PCKG}" = "brew" ]; then
    # Install all dependencies
    brew install zsh neovim curl python git
    easy_install pip
    pip install neovim
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
elif [ "${PCKG}" = "apt" ]; then
    # Install all dependencies
    apt update && apt-get -qq --yes install zsh python3 python3-pip neovim curl git
    pip3 install neovim
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Implemented for: brew, apt. Otherwise only works if python3, pip, neovim python package, git, curl, zsh, oh-my-zsh, nvmim are already installed."
fi

# Put all config files in place
if [[ ! -e "${REPOS}" ]]; then
    mkdir $REPOS
fi

if [[ ! -e "${REPOS}/dotfiles" ]]; then
    `git clone https://github.com/cnegrich/dotfiles.git`
fi

/bin/cp -f $REPOS/dotfiles/.zshrc $HOME/.zshrc
/bin/cp -f $REPOS/dotfiles/.vimrc $HOME/.vimrc
/bin/cp -f $REPOS/dotfiles/.config/nvim/init.vim $HOME/.config/nvim/init.vim
/bin/cp -rf $REPOS/dotfiles/.zsh $HOME/

