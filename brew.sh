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
brew cask install sizeup

echo install core
brew cask install firefox
brew cask install google-chrome

echo install work
brew cask install iterm2
brew cask install sublime-text3
brew cask install virtualbox
brew cask install vagrant
brew cask install gas-mask
brew cask install flowdock
brew cask install licecap

echo finishing up
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
