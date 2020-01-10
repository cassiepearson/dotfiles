# Aliases

# Access config files easily
alias zshrc="nvim ~/.zshrc"
alias vimrc="nvim ~/.vimrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Navigation shortcuts
alias home='cd $HOME'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias ducky="nvim ~/.ducky"
alias duck="nvim ~/.ducky"
alias repos="cd $HOME/Repos"
alias journal="vim ~/Documents/Journals/$(date '+%s')"

# Abbreviate common commands
alias la='ls -la'
alias cl="clear"
alias svi='sudo vi'
alias svim='sudo nvim'
alias py="python3"
alias gfind='find . | grep'
alias sue='sudo -E'
alias cleanstart='make cleanstart'
alias run="echo 'Running...' && make run"
alias t1="tree -L 1"
alias t2="tree -L 2"
alias t3="tree -L 3"

# Prevent typos from slowing down workflow
alias nao="nano"
alias nanoo="nano"
alias v="nvim"
alias vim="nvim"
alias vom="nvim"
alias nmvim="nvim"

# Alias common utilities
alias evaluate="eval '$(ssh-agent -s)' && ssh-add ~/.ssh/id_rsa"
alias mac="if config eth0 | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'"

# Cargo
alias cargobr="cargo build --release"
alias cargotr="cargo test --release -- --nocapture"
alias cargot1="cargo test --release -- --nocapture --test-threads=1"
alias cargob="cargo build"
alias cargot="cargo test"
alias cc="cargo clean && cargo update && cargo build --release"
alias trace_build="RUST_LOG=trace cargo build -v"
alias trace_cargo="RUST_LOG=trace cargo"

# Docker
alias dls='docker service ls'
alias dps='docker ps'
alias dim='docker images'

# Linux only aliases
#alias xcp="xclip -selection c"