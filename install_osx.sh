#!/bin/bash
set -e

echo '--- osx'

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles YES

# Set DNS to Cloudflare
networksetup -setdnsservers Wi-Fi 1.1.1.1 1.0.0.1

# Install Xcode Command Line Tools (skip if already installed)
if ! xcode-select -p &>/dev/null; then
    echo 'Installing Xcode Command Line Tools...'
    xcode-select --install
    echo 'Press any key after Xcode tools installation completes...'
    read -n 1
else
    echo 'Xcode Command Line Tools already installed'
fi

# Set zsh as default shell (skip if already set)
if [ "$SHELL" != "$(which zsh)" ]; then
    chsh -s $(which zsh)
else
    echo 'Zsh already set as default shell'
fi
