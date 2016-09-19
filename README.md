# computer setup

Computer reformatting dotfiles, including helpful aliases. Used to setup:
- [rvm](https://rvm.io) (ruby 2.3.0)
- [homebrew](http://brew.sh)
- [nvm](https://github.com/creationix/nvm) (node latest)
- [tmuxinator](https://github.com/tmuxinator/tmuxinator)
- [zsh](https://github.com/robbyrussell/oh-my-zsh) and [antigen](https://github.com/zsh-users/antigen)
- a bunch of [apps](https://github.com/littlemooon/dotfiles/blob/master/install_apps.sh), more can be found [here](https://caskroom.github.io/search)
- [atom](https://atom.io) for react development
- [albacross](https://github.com/albacross) projects for frontend/api dev


### installation
```
curl -sSL https://get.rvm.io | bash -s stable --ruby
rvm install 2.3.0

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew doctor

brew install git

git clone --recursive https://github.com/littlemooon/dotfiles.git ~/.config
```
```
# install all
bash ~/.config/install.sh
```
```
# or select from
bash ~/.config/install_ruby.sh
bash ~/.config/install_node.sh
bash ~/.config/install_tmux.sh
bash ~/.config/install_apps.sh
bash ~/.config/install_atom.sh
bash ~/.config/install_albacross.sh
```

### terminal
- open terminal preferences
- set font to Fira Code
- import OceanicNext.terminal theme
- set OceanicNext to default
- restart terminal

### aliases
```
alias .='cd ..'
alias zshrc='vim ~/.config/zsh/.zshrc'
alias rezsh='source ~/.config/zsh/.zshrc'
alias cl='clear'
```
```
# git helpers
zc () { git checkout $1; }
zb () { git checkout -b $1 -t develop; }
zm () { git commit -m $*; }
zp () { git push -u origin $(current_branch); }

alias zs='git status'
alias za='git add --all .'
alias zu='cl && git pull --rebase origin develop'
alias zup='git stash && zu && git stash pop'
alias zl='cl && git log --graph --decorate --all'
alias zf='git fetch'
alias zd='git diff'
alias zcd='git checkout develop'
```
```
# project helpers
alias ri='cl && bundle install'
alias rc='cl && bundle exec rails console'
alias rs='cl && bundle exec rails server -b 0.0.0.0'
alias rsp='cl && ELASTICSEARCH_URL=http://elasticsearch.albacross.com bundle exec rails server -b 0.0.0.0'
alias rt='cl && bundle exec rspec'
alias rl='cl && bundle exec rubocop'

alias vr='cl && vagrant resume'
alias vu='cl && vagrant up'
alias vh='cl && vagrant halt'

alias li='cl && lein install'
alias lm='cl && lein migrate'
alias ly='cl && lein sync'

alias ni='cl && npm i'
alias nc='cl && sudo rm -rf node_modules && sudo npm cache clean && npm i'
alias ns='cl && npm start'
alias sns='cl && APP=starship npm start'
alias wns='cl && APP=web npm start'
alias rns='cl && APP=reporter npm start'
alias nt='cl && npm test'
alias snt='cl && APP=starship npm test'
alias wnt='cl && APP=web npm test'
alias rnt='cl && APP=reporter npm test'
alias nl='cl && npm run lint'
alias npmclear='cl && sudo rm -rf node_modules && sudo npm cache clean && npm i'
```
```
# process helpers
muxkill () { tmux kill-session -t $1; }
killprocess () { kill $(ps aux | grep $1 | awk '{print $2}') }
```
