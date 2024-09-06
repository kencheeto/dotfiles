# git
alias g='git'
alias gs='git status'
alias gp='git pull'
alias gpu='git push'
alias gco='git checkout'
alias gci='git commit'
alias grim='git rebase -i master'

alias gr="git for-each-ref --sort=-committerdate refs/heads/ --format='%(authordate:short) %(color:red)%(objectname:short) %(color:yellow)%(refname:short)%(color:reset) (%(color:green)%(committerdate:relative)%(color:reset))'"
new_branch() {
  git checkout -b kenshiro/$1
}
alias nb=new_branch

push_new_branch() {
  git push -u origin $(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
}
alias pnb=push_new_branch

# misc
export EDITOR='vim'
alias ll='ls -alGF'

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

