def symlink source, destination
  if File.exists?(destination) || File.symlink?(destination)
    puts destination + ' already exists'
  else
    File.symlink(source, destination)
  end
end

def relative_path *steps
  File.expand_path(File.join(*steps))
end

%w[
  bash_profile
  gemrc
  gitconfig
  gitignore
  ruby-version
  zendesk
  git-prompt.sh
].each do |dotfile|
  symlink(
    relative_path(__FILE__, '..', dotfile),
    relative_path(ENV['HOME'], '.' + dotfile)
  )
end

sublime_root = File.join(
  File::SEPARATOR,
  'Users',
  `whoami`.strip,
  'Library',
  'Application Support',
  'Sublime Text '
)

symlink(
  File.expand_path(File.join(__FILE__, '..', '..', 'config', 'SublimeText3')),
  File.expand_path(sublime_root + '3')
)
