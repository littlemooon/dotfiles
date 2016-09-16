# computer setup

Run:
```
curl -sSL https://get.rvm.io | bash -s stable --ruby
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor
brew install git
git clone --recursive https://github.com/littlemooon/dot.git ~/.config
bash ~/.config/install.sh
```
