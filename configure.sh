#!/bin/bash
#
# Configure script for macOS ##################################################
#
# THIS SCRIPT IS UNTESTED: DO NOT RUN
# Should be run after make deploy
###############################################################################

#Install Oh-my-zsh Problem: this opens a new shell, requires user to type exit to continue
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Install Pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv

PYTHON_VERSIONS=(2.7.9 3.4.3 3.5.1)
for v in $PYTHON_VERSIONS #Doesnt work
do
    pyenv install $v 
    pyenv shell $v
    pip install --upgrade pip
    pip install --upgrade setuptools
    pip install virtualenv
    pip install pylint
done

#Install HomeBrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

BREW_INSTALLS=(cask tmux vim git wget ansible stow screenfetch htop)
for b in $BREW_INSTALLS #Only installs first entry
do
    brew install $b 
done

CASK_INSTALLS=(google-chrome slack virtualbox julia rust vlc atom)
for c in $CASK_INSTALLS #Only installs first entry
do
    brew cask install $c
done

#Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Setup DevBench
mkdir -p ~/Documents/DevBench

#PROJECTS=(DkMonitor LASubway LogoBatch DotFiles)
