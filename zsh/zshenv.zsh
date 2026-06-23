export EDITOR='vim'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export SETUP="$HOME/.setup"

export GOPATH=$HOME/.go
export PATH="$PATH:$GOPATH/bin"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:/opt/homebrew/opt/rustup/bin"
export PATH="$PATH:$SETUP/bin"
export PATH="$PATH:$HOME/.maestro/bin"

source $HOME/.setup/zsh/nvm.zsh
