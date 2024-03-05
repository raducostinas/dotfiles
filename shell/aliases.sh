# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="z .."
alias ...="z ../.."
alias ll="exa -l"
alias la="exa -la"
alias ~="z ~"
alias gh="z ~"
alias dotfiles='z $DOTFILES_PATH'
alias dt='z $DOTFILES_PATH'
alias gcd='z ~/01-Code/'
alias gobd='z ~/00-Obsidian/'

# Git
alias gaa="git add -A"
alias gc='$DOTLY_PATH/bin/dot git own_commit'
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd='$DOTLY_PATH/bin/dot git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gl='$DOTLY_PATH/bin/dot git pretty-log'
alias gwa="git worktree add"
alias gwr="git worktree remove"
alias gwl="git worktree list"

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'
alias up='dot package update_all'

# Vim
alias v=openNvim

function openNvim {
  if [ $# -eq 0 ]; then
    nvim ./
  else
    nvim $1
  fi
}

