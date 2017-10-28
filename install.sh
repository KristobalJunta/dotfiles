#!/bin/bash

# Wanted to create a Makefile, but got stuck with conditionals
# So a shell script would be ok


main() {
    # main installation procedure
    install-bash
    install-userdirs
    install-git
    install-atom
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

install-atom() {
    local pkgType=$(test-system)
    local installFile="atom.$pkgType"
    echo "downloading $installFile"
    wget -nv -O $installFile "atom.io/download/$pkgType"
    $pkgType -i $installFile
    rm $installFile
    apm install --package-file atom/packages.txt
    copyFile "atom/config.cson" "~/.atom/config.cson"
    copyFile "atom/keymap.cson" "~/.atom/keymap.cson"
}

install-bash() {
    copyFile "bash/.bashrc" "~/.bashrc"
}

install-git() {
    copyFile "git/.gitconfig" "~/.gitconfig"
}

install-userdirs() {
    copyFile "user-dirs.dirs" "~/.config/user-dirs.dirs"
}

# run it all

main "$@"

