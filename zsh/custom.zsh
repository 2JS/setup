SETUP="$HOME/.setup"
ZSH_DISABLE_COMPFIX=true

# load edit-commnad-line function
# ref: https://www.44bits.io/ko/post/editing-multiline-command-on-shell
source $SETUP/zsh/functions/edit-command-line.zsh

# load peco commandline history
# ref: https://www.44bits.io/ko/post/incremental-search-tool-peco
source $SETUP/zsh/functions/peco-history.zsh

# Setting GOPATH
export GOPATH=$HOME/Developer/Go
export GOBIN=$GOPATH/bin

export PATH=".:$PATH"
# export EDITOR="vim"

# ref: https://github.com/Homebrew/homebrew-command-not-found
# if brew command command-not-found-init > /dev/null 2>&1; then eval "$(brew command-not-found-init)"; fi

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status direnv anaconda pyenv nodenv nvm nodeenv rbenv rvm kubecontext terraform aws nordvpn ranger)

POWERLEVEL9K_STATUS_OK=false
POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=true

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=true

# fzf commandline fuzzy completion
# ref: https://subicura.com/2017/11/22/mac-os-development-environment-setup.html#커맨드라인-애플리케이션
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
