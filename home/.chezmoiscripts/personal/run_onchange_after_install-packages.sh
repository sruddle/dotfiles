#!/bin/bash

set -e

is_installed() {
    if command -v "$1" > /dev/null 2>&1; then
        true
        return 0
    fi
    false
}

if ! is_installed brew; then
    echo "Homebrew not found. Aborting."
    exit 1
fi

brew install mise
brew install jandedobbeleer/oh-my-posh
brew install --cask chromedriver
brew install --cask firefox
brew install --cask font-meslo-lg-nerd-font
brew install --cask xquartz
brew install --cask iterm2
brew install --cask notion
brew install --cask visual-studio-code

if ! is_installed rclone; then
    echo "rclone not found. Installing."
    curl https://rclone.org/install.sh | bash
fi

if ! is_installed /opt/homebrew/bin/mise; then
    echo "mise not found. Aborting."
    exit 1
fi

/opt/homebrew/bin/mise trust ~/.config/mise/config.toml
/opt/homebrew/bin/mise install
