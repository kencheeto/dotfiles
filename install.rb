def source filename
  File.expand_path File.join(__FILE__, '../', filename)
end

dotfiles = %w[
  .bash_profile
  .gemrc
  .gitconfig
  .ruby-version
  .zendeskrc
].each do |dotfile|
  puts "copying #{source(dotfile)} to ~/#{dotfile}"
  puts system('ln', '-s', source(dotfile), "#{ENV['HOME'] + '/' + dotfile}")
end
