# git
alias g='git'
alias gs='git status'
alias gp='git pull'
alias gpu='git push'
alias gco='git checkout'
alias gci='git commit'
alias grim='git rebase -i master'
alias d='docker-compose exec app'
alias dc='docker-compose'
alias yt='youtube-dl -x --audio-format mp3 --audio-quality 0 '
alias mips-auth='pyenv activate corevpc && mips && aws-mfa'
alias dcrestart='docker-compose down; docker-compose up -d; sleep 10; d npm run migrate:up'

new_branch() {
  git checkout -b kenshiro-$1
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

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh

# npm
export PATH=./node_modules/.bin:$PATH

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
