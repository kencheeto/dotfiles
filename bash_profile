# git
alias v='vagrant'
alias h='heroku'
alias g='git'
alias gs='git status'
alias gp='git pull'
alias gpu='git push'
alias gco='git checkout'
alias gci='git commit'
alias bundle-grep="bundle exec ruby -e 'puts $:' | xargs grep -r"

# misc
export PS1='\W$(__git_ps1 " (%s)") \$ '
export EDITOR='vim'
alias ll='ls -alGF'
alias code='cd ~/sync/code'
alias notes='subl ~/sync/notes'
alias be='bundle exec'

# auto ll on cd
PROMPT_COMMAND='[[ ${__new_wd:=$PWD} != $PWD ]] && ll; __new_wd=$PWD'

# paths for brew-managed binaries
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH

# npm
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=./node_modules/.bin:$PATH

# teach bash tricks
source ~/.git-prompt.sh

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
