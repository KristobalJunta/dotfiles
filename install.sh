#!/bin/bash

# Wanted to create a Makefile, but got stuck with conditionals
# So a shell script would be ok


main() {
    # main installation procedure
    install-bash
    install-userdirs
    install-git
    install-vscode
    echo 'done'
}

# helper functions

test-system() {
    if which dpkg > /dev/null 2>&1
    then
        echo 'deb'
    else
        echo 'rpm'
    fi
}

copyFile() {
    if [ -z "$1" ] || [ -z "$2" ]; then
        echo 'Error in copyFile: not enough arguments'
        exit 125
    fi
    local fileName=$1
    local destination=$2
    if [ -f $destination ]; then
        mv $destination "$destination.bak"
    fi

    cp $fileName $destination

    echo "copied $fileName to $destination"
}

# install functions

install-bash() {
    copyFile "bash/.bashrc" "~/.bashrc"
}

install-git() {
    copyFile "git/.gitconfig" "~/.gitconfig"
}

install-userdirs() {
    copyFile "user-dirs.dirs" "~/.config/user-dirs.dirs"
}

install-vscode() {
    copyFile "vscode/settings.json" "~/.config/Code/User/settings.json"
}

# run it all
main "$@"
