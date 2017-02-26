echo '--- osx'

git config --global credential.helper osxkeychain
defaults write com.apple.finder AppleShowAllFiles YES

xcode-select --install
