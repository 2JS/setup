# eza, powerful ls alternative
alias ls='eza --header'
alias la='eza --git --header --all'
alias ll='eza --git --header --long'
alias l='eza --git --header --long --all'

alias o='open'
alias b='bat'
alias c='code'

alias tfa='terraform apply -parallelism 100'
alias tfaa='terraform apply -parallelism 100 -auto-approve'
alias tfd='terraform destroy -parallelism 100'
alias tff='terraform fmt -recursive'
alias tfsl='terraform state list | sort'

alias gfom="git fetch origin `git_main_branch`:`git_main_branch`"
alias gfod='git fetch origin develop:develop'
