# Aliases

# Access config files easily
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Navigation shortcuts
alias home='cd $HOME'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias csd='cd $SD'
alias ducky="nvim ~/.ducky"
alias duck="nvim ~/.ducky"
alias clean_duck="cp -f ~/.zsh/templates/.ducky_reset ~/.ducky"
alias repos="cd $HOME/Repos"
alias journal="vim ~/Documents/Personal/Journals/$(date +'%m_%d_%y_%A')"

# Abbreviate common commands
alias la='ls -la'
alias svi='sudo vi'
alias svim='sudo vim'
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
alias v="vim"
alias vim="vim"
alias vom="vim"

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
alias acargob="RUSTFLAGS=-Awarnings cargo build"
alias acargobr="RUSTFLAGS=-Awarnings cargo build --release"
alias acargot="RUSTFLAGS=-Awarnings cargo test -- --nocapture"
alias acargotr="RUSTFLAGS=-Awarnings cargo test --release -- --nocapture"

# Docker
alias dls='docker service ls'
alias dps='docker ps'
alias dim='docker images'

# Docker development environment containers
alias dev='docker run --rm -it -v $(pwd):/code dev_env:latest'
alias cdev='docker run --rm -it -v $(pwd):/code c_dev:latest'
alias cenv='docker run --rm -it -v $(pwd):/code c_env:latest'
alias kali='docker run --rm -it -v $(pwd):/code kali:latest'
alias parrot='docker run --rm -it -v $(pwd):/code parrot:latest'
alias parroth='docker run --rm -it -v $(pwd):/code parrot_heavy:latest'

# Linux only aliases
#alias xcp="xclip -selection c"
