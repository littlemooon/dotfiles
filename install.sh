#!/bin/bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HOME_PACKAGE="$DOTFILES_DIR/home"
cd "$DOTFILES_DIR"

log() {
    echo "--- $1"
}

error() {
    echo "ERROR: $1" >&2
    exit 1
}

log "Starting dotfiles installation"

log 'Show hidden files in Finder'
if ! defaults write com.apple.finder AppleShowAllFiles YES 2>/dev/null; then
    error 'Failed to configure Finder settings'
fi

log 'Check Xcode Command Line Tools'
if ! xcode-select -p &>/dev/null; then
    log 'Installing Xcode Command Line Tools...'
    if ! xcode-select --install; then
        error 'Failed to install Xcode Command Line Tools'
    fi
    log 'Press any key after Xcode tools installation completes...'
    read -n 1 -r
else
    log 'Xcode Command Line Tools already installed'
fi

log 'Check default shell'
if [[ "$SHELL" != "$(which zsh)" ]]; then
    log 'Setting zsh as default shell'
    if ! chsh -s "$(which zsh)"; then
        error 'Failed to set zsh as default shell'
    fi
else
    log 'Zsh already set as default shell'
fi

log 'Starting Homebrew setup'

if [[ ! -f "$DOTFILES_DIR/Brewfile" ]]; then
    error "Brewfile not found at $DOTFILES_DIR/Brewfile"
fi

if ! command -v brew &>/dev/null; then
    log 'Installing Homebrew...'
    if ! /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; then
        error 'Failed to install Homebrew'
    fi

    if ! eval "$(/opt/homebrew/bin/brew shellenv)"; then
        error 'Failed to initialize Homebrew environment'
    fi
else
    log 'Homebrew already installed'
fi

log 'Updating Homebrew'
if ! brew update; then
    error 'Failed to update Homebrew'
fi

log 'Installing from Brewfile'
if ! brew bundle --file="$DOTFILES_DIR/Brewfile"; then
    error 'Failed to install from Brewfile'
fi

log 'Installing runtimes via mise'
if command -v mise &>/dev/null; then
    if ! mise install; then
        error 'Failed to install mise runtimes'
    fi
else
    log 'mise not found, skipping runtime installation'
fi

log 'Stowing dotfiles'

if [[ ! -d "$HOME_PACKAGE" ]]; then
    error "Home stow package not found at $HOME_PACKAGE"
fi

if ! stow -t ~ home; then
    error 'Failed to stow home package'
fi

log 'Done! Restart your terminal or run: source ~/.zshrc'
