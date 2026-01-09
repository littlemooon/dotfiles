#!/bin/bash
set -e

echo '--- zsh'

cd ~/a/dotfiles
stow -t ~ zsh

echo 'Zsh config stowed'
