bash ./install_node.sh
bash ./install_tmux.sh
bash ./install_apps.sh
bash ./install_atom.sh

echo '--- osx settings'
git config --global credential.helper osxkeychain
defaults write com.apple.finder AppleShowAllFiles YES
