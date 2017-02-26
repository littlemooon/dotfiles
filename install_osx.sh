echo '--- osx'

defaults write com.apple.finder AppleShowAllFiles YES

xcode-select --install

git config --global push.default simple
git config --global user.name "fred wright"
git config --global user.email "fredwright0@gmail.com"
git config --global credential.helper osxkeychain

chsh -s $(which zsh)
