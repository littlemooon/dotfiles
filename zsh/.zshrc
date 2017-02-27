# run nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# load antibody plugins
source <(antibody init)
antibody bundle < ~/.zsh-plugins.txt >> ~/.zsh-sourceables.sh
source ~/.zsh-sourceables.sh

# automatic ls on cd
auto-ls () { ls; }
chpwd_functions=( auto-ls $chpwd_functions )

#aliases
alias .='cd ..'
alias zshrc='vim ~/.config/zsh/.zshrc'
alias rezsh='source ~/.config/zsh/.zshrc'
alias cl='clear'

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

# process helpers
killprocess () { kill $(ps aux | grep $1 | awk '{print $2}') }
killport () { kill -9 $(lsof -i tcp:$1 -t) }
