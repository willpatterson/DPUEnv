#!/bin/bash

ACTION=$1 #build, pull, update
PROFILE=$2

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pull() {
    DFILES=$(find $SCRIPT_DIR/profiles/$PROFILE/dotfiles -type f -exec basename {} \;)
    for f in $DFILES; do cp $SCRIPT_DIR/profiles/$PROFILE/dotfiles/$f ~/dpuvtest/.$f; done
}
