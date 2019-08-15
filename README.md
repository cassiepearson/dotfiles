# dotfiles
All of my personal dotfiles, used to sync my zshrc and vimrc. I included some parts of my i3 setup, they include segments from across the internet. I recommend looking [here](https://www.reddit.com/r/unixporn) for original files and more sophisticated i3 configurations.

#### Background Image
I do not own nor did I produce this image, it is available [here](https://www.reddit.com/r/Art/comments/7weunw/neon_aaron_griffin_digital_2017/).

#### Dependencies
* Shell: zsh (oh-my-zsh)
* Theme: Arc-dark
* Icons: Qogir icons (or La Capitaine)
* xclip
* make
* cmake
* git
* fzf
* vim
* neovim
* curl
* tmux
* gnome-tweak-tool
* lolcat
* tabliss - firefox extension
* Easy Installation with apt: sudo apt install zsh tmux lolcat make cmake xclip git curl gnome-tweaks vim
* The following must be installed separately: fzf, oh-my-zsh, arc gtk theme, Qogir icons, and tabliss (firefox extension)

This build was created using Ubuntu 18.04LTS desktop, these same configuration files also work with any other debian based operating system as long as the gnome desktop is installed. For other operating systems, change the line in the i3 conf that imports the GTK themes. Some parts of the zshrc will also need to change based on OS, they are commented in the file.

#### Some Other Common Utilities
* pandoc
* texmaker
* htop
* python-pip
* linux-headers-'uname -r'
* compizconfig-settings-manager
* compiz-plugins-extra
* nmap
* Easy install: sudo apt install pandoc htop python-pip texmaker linux-headers-'uname -r' compizconfig-settings-manager compiz-plugins-extra nmap
