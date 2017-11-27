#!/bin/bash

ACTION=$1 #build, pull, update, new
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

build() {
    pull
    . "$SCRIPT_DIR/profiles/$PROFILE/pre_configure.sh"
    . "$SCRIPT_DIR/base_configure.sh"
    . "$SCRIPT_DIR/profiles/$PROFILE/post_configure.sh"
    pull
}

info() {
    echo "Deploy Personal Unix Environment (dpuenv.sh)"
    echo "A script to automate maintaining and updating dotfile and"
    echo "configuration script profiles"
    echo ""
    echo "Usage: "
    echo "    ./dpuenv [action] <profile name> <comment (optional for update only)>"
    echo ""
    echo "Actoins:"
    echo "    pull, update, build, help"
    echo ""
}

case $ACTION in
    "help") info ;;
    "--help") info ;;
    "-help") info ;;
    "-h") info ;;
    "pull") pull ;;
    "update") update ;;
    "build") build ;;
    *) info ;;
esac
