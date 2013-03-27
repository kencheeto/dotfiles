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
export PS1='\W $ '
alias ll='ls -alGF'
alias code='cd ~/code'
alias notes='subl ~/Dropbox/notes'

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

# zendesk specific config
source .zendeskrc
