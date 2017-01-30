# git
alias g='git'
alias gs='git status'
alias gp='git pull'
alias gpu='git push'
alias gco='git checkout'
alias gci='git commit'

new_branch() {
  git checkout -b $1
}
alias nb=new_branch

push_new_branch() {
  git push -u origin $(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
}
alias pnb=push_new_branch

# misc
export EDITOR='vim'
alias ll='ls -alGF'

# paths for brew-managed binaries
export PATH=/usr/local/bin:$PATH

# npm
export PATH=./node_modules/.bin:$PATH

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
