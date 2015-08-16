# computer setup

### install homebrew
- echo '--- installing homebrew'
- ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
- brew update
- brew doctor

### install key packages
- brew install nvm
- brew install git
- brew install tmux
- brew install leiningen

### get config
- git clone --recursive https://github.com/littlemooon/dot.git ~/.config

### run installation
- bash ~/.config/install.sh

### setup terminal
- open terminal preferences
- set font to Fira Code
- import OceanicNext.terminal theme
- set OceanicNext to default
- restart terminal

### install tmuxinator
- gem install tmuxinator

... ... ... ... ... ... ... ... ...
add to zshrc?
... ... ... ... ... ... ... ... ...

# export path
export PATH="$PATH:$HOME/.rvm/bin:/usr/sbin:/usr/local/bin"

# run tmuxinator
source ~/.config/tmux/tmuxinator.zsh

# run nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
