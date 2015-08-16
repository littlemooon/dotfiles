# computer setup

### install homebrew
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

### install node
nvm install stable
nvm alias default stable
