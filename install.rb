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
  .bash_profile
  .gemrc
  .gitconfig
  .ruby-version
  git-prompt.sh
  git-completion.bash
].each do |dotfile|
  symlink(
    relative_path(__FILE__, '..', dotfile),
    relative_path(ENV['HOME'], dotfile)
  )

end

# special snowflake
symlink(
  relative_path(__FILE__, '..', 'gitignore'),
  relative_path(ENV['HOME'], '.gitignore')
)
