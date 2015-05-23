# computer setup

### dot
git clone https://github.com/littlemooon/dot.git ~

### homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor # if this fails run: export PATH="/usr/local/bin:$PATH"

### packages
brew install node
brew install git
brew install tmux
brew install macvim

### git keychain
git config --global credential.helper osxkeychain

### antigen
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > ~/dot/antigen.zsh

### vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

### Fira Code font - add to Font Book
curl -L https://github.com/tonsky/FiraCode/releases/download/0.3/FiraCode-Regular.otf > ~/dot/FiraCode-Regular.otf
