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

alias vr='cl && vagrant resume'
alias vu='cl && vagrant up'
alias vh='cl && vagrant halt'

alias ni='cl && npm i'
alias nc='cl && sudo rm -rf node_modules && sudo npm cache clean && npm i'
alias ns='cl && npm start'
alias nt='cl && npm test'
alias nl='cl && npm run lint'

# process helpers

killprocess () { kill $(ps aux | grep $1 | awk '{print $2}') }
killport () { kill -9 $(lsof -i tcp:$1 -t) }
