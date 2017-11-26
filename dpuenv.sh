#!/bin/bash

ACTION=$1 #build, pull, update
PROFILE=$2
COMMENTS=$3 #Optional commit message when updating

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DFILES=$(find $SCRIPT_DIR/profiles/$PROFILE/dotfiles -type f -exec basename {} \;)

pull() {
    for f in $DFILES; do cp $SCRIPT_DIR/profiles/$PROFILE/dotfiles/$f ~/dpuvtest/.$f; done
}

update() {
    for f in $DFILES; do 
        cp ~/dpuvtest/.$f $SCRIPT_DIR/profiles/$PROFILE/dotfiles/$f
    done
    cd $SCRIPT_DIR
    git add $SCRIPT_DIR/profiles/$PROFILE/dotfiles/
    git commit -m "$COMMENTS"
    git push
}
