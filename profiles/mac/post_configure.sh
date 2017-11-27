#!/bin/bash

# HomeBrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

/usr/local/bin/brew upgrade
/usr/local/bin/brew update

/usr/local/bin/brew install tmux wget cask git ansible nmap vim gcc gnupg htop redis

/usr/local/bin/brew cask install google-chrome vlc skype slack iterm2 flux steam tunnelblick vagrant

/usr/local/bin/brew cask install xquartz
/usr/local/bin/brew install wine
