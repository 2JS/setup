SETUP="$HOME/.setup"
ZSH_DISABLE_COMPFIX=true

# load edit-commnad-line function
# ref: https://www.44bits.io/ko/post/editing-multiline-command-on-shell
source $SETUP/zsh/functions/edit-command-line.zsh

# load peco commandline history
# ref: https://www.44bits.io/ko/post/incremental-search-tool-peco
source $SETUP/zsh/functions/peco-history.zsh

# Setting GOPATH
export GOPATH=$HOME/.go
export PATH="$PATH:$GOPATH/bin"

export PATH="/opt/homebrew/bin:$PATH"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$SETUP/bin"
# export EDITOR="vim"

# ref: https://github.com/Homebrew/homebrew-command-not-found
# if brew command command-not-found-init > /dev/null 2>&1; then eval "$(brew command-not-found-init)"; fi

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=true

# fzf commandline fuzzy completion
# ref: https://subicura.com/2017/11/22/mac-os-development-environment-setup.html#커맨드라인-애플리케이션
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#

# direnv
eval "$(direnv hook zsh)"

# git commit gpg signing
export GPG_TTY=$TTY

# jump
eval "$(jump shell)"

export PAGER=bat
export MANPAGER="sh -c 'col -bx | bat --language man --plain'"
export BAT_CONFIG_PATH="$SETUP/bat/config"
