#!/bin/bash
# Installs starship.rs command prompt if it's not already there

if [ -z "$(command -v starship)" ]; then
    curl -fsSL https://starship.rs/install.sh > starship_installer.sh
    bash starship_installer.sh -b "$HOME/bin" -f
    rm starship_installer.sh
fi
