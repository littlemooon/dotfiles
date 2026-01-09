#!/bin/bash
set -e

echo '--- config'

cd ~/a/dotfiles
stow -t ~ config
stow -t ~ git
stow -t ~ gh
stow -t ~ jj
stow -t ~ mise
stow -t ~ starship
stow -t ~ claude
stow -t ~ opencode
stow -t ~ codex
stow -t ~ mcp

echo 'Config files stowed'
