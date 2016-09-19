# computer setup

### installation
```
curl -sSL https://get.rvm.io | bash -s stable --ruby
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
rvm install 2.3.0
brew update
brew doctor
brew install git
git clone --recursive https://github.com/littlemooon/dot.git ~/.config
bash ~/.config/install.sh
```

### terminal
- open terminal preferences
- set font to Fira Code
- import OceanicNext.terminal theme
- set OceanicNext to default
- restart terminal
