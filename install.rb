def source dotfile
  File.expand_path File.join(__FILE__, '../', dotfile)
end

def target dotfile
  File.expand_path File.join(ENV['HOME'], '.' + dotfile)
end

dotfiles = %w[
  bash_profile
  gemrc
  gitconfig
  gitignore
  ruby-version
  zendesk
  git-prompt.sh
  git-completion.sh
].each do |dotfile|
  command = "ln -s #{source(dotfile)} #{target(dotfile)}"
  puts command
  system *command.split(' ')
end
