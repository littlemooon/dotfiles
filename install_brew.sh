#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo '--- brew'

# Install Homebrew if not present
if ! command -v brew &>/dev/null; then
    echo 'Installing Homebrew...'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to PATH for this session
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo 'Homebrew already installed'
fi

# Update Homebrew and install from Brewfile
brew update
brew bundle --file="$DOTFILES_DIR/Brewfile"

# Install runtimes via mise
echo '--- mise'
mise install
