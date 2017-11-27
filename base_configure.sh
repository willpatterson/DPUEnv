#!/bin/bash

# Install oh-my-zsh without starting zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | awk '!/  env zsh/')"

# Pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

declare -a PYTHON_VERSIONS=("2.7.9" "3.4.3" "3.5.1")
for v in "${PYTHON_VERSIONS[@]}" #Doesnt work
do
    pyenv install $v 
    pyenv shell $v
    pip install --upgrade pip
    pip install --upgrade setuptools
    pip install virtualenv
    pip install pylint
done
