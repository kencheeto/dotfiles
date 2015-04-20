#!/bin/sh


echo installing homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo installing brew formulae
brew install chruby
brew install ruby-install
brew install caskroom/cask/brew-cask

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

echo tapping caskroom/versions
brew tap caskroom/versions

echo install utilities
brew cask install alfred
brew cask install istat-menus
brew cask install karabiner
brew cask install duet
brew cask install cloak
brew cask install sizeup
brew cask install spideroak

echo install core
brew cask install firefox
brew cask install chrome
brew cask install vlc
brew cask install spotify
brew cask install slack
brew cask install mailbox
brew cask install steam

echo install work
brew cask install iterm2
brew cask install heroku-toolbelt
brew cask install sublime-text3
brew cask install virtualbox
brew cask install vagrant
brew cask install gas-mask
brew cask install flowdock
brew cask install licecap
brew cask install sketch

echo finishing up
brew cask alfred link
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
