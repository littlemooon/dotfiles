## OSX dotfiles

Simple dotfiles used to get my web development environment up and running on OSX.

#### Included

Programs:
- [homebrew](http://brew.sh)
- [zsh](https://en.wikipedia.org/wiki/Z_shell) with [antidote](https://antidote.sh/)
- [vs code](https://code.visualstudio.com/) for react development
- [some apps](https://github.com/littlemooon/dotfiles/blob/master/install_apps.sh) - [more](https://caskroom.github.io/search)

Plugins:
- [antidote zsh plugins](https://github.com/littlemooon/dotfiles/blob/master/zsh/.zsh_plugins.txt) - [more](https://github.com/unixorn/awesome-zsh-plugins#plugins)

Aliases:
- [detailed here](https://github.com/littlemooon/dotfiles/blob/master/zsh/.zsh_aliases.sh)

#### Installation

I highly recommend updating some of the `install_` files to suit your preferences before installing all scripts.
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew doctor && brew install git

git clone https://github.com/littlemooon/dotfiles.git ~/a/dotfiles

bash ~/a/dotfiles/install.sh
```
