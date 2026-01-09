#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DOTFILES_DIR"

bash ./install_osx.sh
bash ./install_brew.sh
bash ./install_zsh.sh
bash ./install_config.sh

echo '--- Done! Restart your terminal or run: source ~/.zshrc'
