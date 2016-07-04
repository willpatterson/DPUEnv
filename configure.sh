#!/bin/bash

# Configure script ##############
#
# Should be run after make deploy
#################################

#Install Pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv

#Install Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

pyenv install 2.7.9
pyenv install 3.5.1

#Install HomeBrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install cask
