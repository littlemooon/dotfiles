echo '--- osx'

defaults write com.apple.finder AppleShowAllFiles YES

networksetup -setdnsservers Wi-Fi 1.1.1.1 1.0.0.1

xcode-select --install

git config --global push.default simple
git config --global user.name "fred wright"
git config --global user.email "fredwright0@gmail.com"
git config --global credential.helper osxkeychain

chsh -s $(which zsh)
