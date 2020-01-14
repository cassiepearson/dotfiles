# Import system bash profile
source $HOME/.bash_profile

# Import custom zsh profile
source $HOME/.zsh/profile.zsh

# Import custom aliases
source $HOME/.zsh/aliases.zsh

# Import custom shell functions
source $HOME/.zsh/functions.zsh
#
# Source Oh my zsh
source $ZSH/oh-my-zsh.sh

# Set ZSH_CUSTOM folder to .zsh
ZSH_CUSTOM=$HOME/.zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# Favorite themes: robbyrussell, clean, gallifrey
# Disliked agnoster, amuse, blinks, crunch,

#---------------
# Disable the verifcation of insecure directories in oh-my-zsh to allow them
# to be loaded
# Change to false or comment out to disable
# This may also be fixed by changing the permissions of the group and others
# to remove write permissions
#
# This may be needed to allow custom themese and plug-ins, however may be
# a security risk if file source is untrusted.
#
# Caused by the MacOSX permissions
ZSH_DISABLE_COMPFIX="true"
#--------------

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  brew
  common-aliases
  copyfile
  dash
  dirhistory
  git
  git-extras
  history
  osx
  pip
  python
  ripgrep
  rust
  safe-paste
  web-search
  wd
  z
)

# Set default keybindings to be vim mode (defaul is emacs mode)
set -o vi

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='vim'
fi
