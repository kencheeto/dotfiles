# git
alias v='vagrant'
alias h='heroku'
alias g='git'
alias gs='git status'
alias gp='git pull'
alias gd='git diff --color --color-words --abbrev'
alias gpu='git push'
alias gco='git checkout'
alias gci='git commit'
alias bgrep="bundle exec ruby -e 'puts $:' | xargs grep -r"
alias gpa="ls | xargs -P20 -I{} git -C {} pull"

new_branch() {
  git checkout -b kenshiro/$1
}
alias nb=new_branch

push_new_branch() {
  git push -u origin $(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
}
alias pnb=push_new_branch

merge_master() {
  old_branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
  echo $old_branch
  git checkout master
  git pull
  git checkout $old_branch
  git merge master
}
alias mm=merge_master

# misc
export PS1='\W$(__git_ps1 " (%s)") \$ '
export EDITOR='vim'
alias ll='ls -alGF'
alias be='bundle exec'

# auto ll on cd
PROMPT_COMMAND='[[ ${__new_wd:=$PWD} != $PWD ]] && ll; __new_wd=$PWD'

# paths for brew-managed binaries
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH

# npm
export PATH=./node_modules/.bin:$PATH

# nvm
export NVM_DIR=~/.nvm
source /usr/local/opt/nvm/nvm.sh

# teach bash tricks
source ~/git-prompt.sh
source ~/git-completion.sh

# Enable tab completion for `g` by marking it as an alias for `git`
if type __git_complete &> /dev/null; then
    __git_complete g __git_main
fi;

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

if [ -f ~/zendesk.bash ]
then
  source ~/zendesk.bash
fi
