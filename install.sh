
# set zsh repo
export ZDOTDIR="~/.zsh"

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor # if this fails run: export PATH="/usr/local/bin:$PATH"

# install packages
brew install node
brew install git
brew install tmux

# set git keychain
git config --global credential.helper osxkeychain

# download antigen
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > ~/.config/.zsh/antigen.zsh

# download fira code font
curl -L https://github.com/tonsky/FiraCode/releases/download/0.3/FiraCode-Regular.otf > ~/.config/FiraCode-Regular.otf
