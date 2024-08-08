# eza, powerful ls alternative
alias ls='eza -h'
alias la='eza -ah'
alias ll='eza -lh'
alias l='eza -lha'

alias o='open'

alias tfa='terraform apply -parallelism 100'
alias tfaa='terraform apply -parallelism 100 -auto-approve'
alias tfd='terraform destroy -parallelism 100'
alias tff='terraform fmt -recursive'
alias tfsl='terraform state list | sort'
