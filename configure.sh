#!/bin/bash

# Configure script for mac##############
#
# Should be run after make deploy
#################################

#Install Pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv

#Install Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

PYTHON_VERSIONS=(2.7.9 3.4.3 3.5.1)
for v in $PYTHON_VERSIONS
do
    pyenv install $v 
    pyenv shell $v
    pip install --upgrade pip
    pip install --upgrade setuptools
    pip install virtualenv
done

#Install HomeBrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

BREW_INSTALLS=(cask tmux vim git wget ansible stow screenfetch htop)
for b in $BREW_INSTALLS
do
    brew install $b
done

CASK_INSTALLS=(google-chrome slack virtualbox julia rust vlc atom)
for c in $CASK_INSTALLS
do
    brew cask install $c
done

#Setup DevBench
mkdir -p ~/DevBench

#PROJECTS=(DkMonitor LASubway LogoBatch DotFiles)
