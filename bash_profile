# git
alias g='git'
alias gs='git status'
alias gp='git pull'
alias gpu='git push'
alias gco='git checkout'
alias gci='git commit'

# postgres
alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# misc
export PS1='\W$(__git_ps1 " (%s)") \$ '
alias ll='ls -alGF'
alias code='cd ~/code'
alias notes='subl ~/Dropbox/notes'
alias fs='foreman start'

# auto ls on cd
PROMPT_COMMAND='[[ ${__new_wd:=$PWD} != $PWD ]] && ll; __new_wd=$PWD'

# auto bundle exec retry
auto_bundle_install() {
  eval "$@"
  if [ $? = 7 ]; then
    bundle --local
    if [ $? = 0 ]; then
      eval "$@"
    fi
  fi
}
alias be='auto_bundle_install bundle exec'

# paths for brew-managed binaries
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH

# npm
export PATH=/usr/local/share/npm/bin:$PATH

# teach bash tricks
source ~/.git-prompt.sh

# zendesk specific config
source ~/.zendesk

# hitch
hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'

# node version manager
[[ -s /Users/kencheeto/.nvm/nvm.sh ]] && . /Users/kencheeto/.nvm/nvm.sh # This loads NVM

