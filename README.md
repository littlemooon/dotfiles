# computer setup

### installation
```
curl -sSL https://get.rvm.io | bash -s stable --ruby
rvm install 2.3.0

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew doctor

brew install git

git clone --recursive https://github.com/littlemooon/dot.git ~/.config

# install all
bash ~/.config/install.sh

# or select from
bash ~/.config/install_ruby.sh
bash ~/.config/install_node.sh
bash ~/.config/install_tmux.sh
bash ~/.config/install_apps.sh
bash ~/.config/install_atom.sh
bash ~/.config/install_work.sh
```

### terminal
- open terminal preferences
- set font to Fira Code
- import OceanicNext.terminal theme
- set OceanicNext to default
- restart terminal
