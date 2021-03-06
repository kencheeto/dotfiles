def symlink source, destination
  if File.exists?(destination) || File.symlink?(destination)
    puts destination + ' already exists'
  else
    File.symlink(source, destination)
    puts destination + ' symlinked'
  end
end

def relative_path *steps
  File.expand_path(File.join(*steps))
end

%w[
  .bash_profile
  .gitconfig
  .ruby-version
  .npmrc
  .gitignore
  .inputrc
].each do |dotfile|
  symlink(
    relative_path(__FILE__, '..', dotfile),
    relative_path(ENV['HOME'], dotfile)
  )
end
