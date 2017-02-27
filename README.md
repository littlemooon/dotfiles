## OSX dotfiles

Simple dotfiles used to get my web development environment up and running on OSX.

#### Included

Programs:
- [homebrew](http://brew.sh)
- [zsh](https://en.wikipedia.org/wiki/Z_shell) with [antibody](http://getantibody.github.io/)
- [nvm](https://github.com/creationix/nvm) with latest node
- [hyper](https://hyper.is/) terminal emulator
- [atom](https://atom.io) for react development
- [some apps](https://github.com/littlemooon/dotfiles/blob/master/install_apps.sh) - [more](https://caskroom.github.io/search)

Plugins:
- [antibody zsh plugins](https://github.com/littlemooon/dotfiles/blob/master/zsh/.zsh-plugins.txt) - [more](https://github.com/unixorn/awesome-zsh-plugins#plugins)
- [hyper plugins](https://github.com/littlemooon/dotfiles/blob/master/hyper/.hyper.js) - [more](https://github.com/bnb/awesome-hyper)
- [atom react plugins](https://github.com/littlemooon/dotfiles/blob/master/install_atom.sh) - [more](https://atom.io/packages)

Aliases:
- [detailed here](https://github.com/littlemooon/dotfiles/blob/master/zsh/.zsh-aliases.sh)

#### Installation

I highly recommend updating some of the `install_` files to suit your preferences before installing all scripts.
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew doctor && brew install git

git clone https://github.com/littlemooon/dotfiles.git ~/a/dotfiles

bash ~/a/dotfiles/install.sh
```
