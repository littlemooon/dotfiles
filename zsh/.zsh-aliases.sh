#aliases

alias .='cd ..'
alias zshrc='vim ~/.zsh-aliases'
alias rezsh='source ~/.zshrc'
alias cl='clear'
alias mux='tmuxinator'
alias wifi='wifi-password'
alias rn='react-native'
alias cleanbranches='git branch | grep -v "master" | xargs git branch -D'

# git helpers

zc () { git checkout $1; }
zb () { git checkout -b $1 -t master; }
zm () { git commit -m $*; }
zp () { git push --follow-tags -u origin $(current_branch); }

alias zs='git status'
alias za='git add --all . && git reset .env'
alias zu='cl && git pull --rebase origin'
alias zum='cl && git pull --rebase origin master'
alias zup='git stash && zu && git stash pop'
alias zl='cl && git log --graph --decorate --all'
alias zf='git fetch'
alias zd='git diff'
alias zcd='git checkout develop'
alias zcm='git checkout master'

# project helpers

alias ni='cl && npm i'
alias nuke='cl && sudo rm -rf node_modules && sudo yarn cache clean && yarn'
alias nc='npm-check -u'
alias ns='cl && npm start'
alias nt='cl && npm test'
alias ntw='cl && npm run test:watch'
alias nf='cl && npm run flow'
alias nfb='cl && npm run flow:build'
alias nd='cl && npm run dev'
alias nb='cl && npm run build'
alias nl='cl && npm run lint'
alias nr='cl && npm run'

alias j='cl && jest'
alias jw='cl && jest -w'

alias vr='cl && vagrant resume'
alias vu='cl && vagrant up'
alias vh='cl && vagrant halt'

# process helpers

muxkill () { tmux kill-session -t $1; }
killprocess () { kill $(ps aux | grep $1 | awk '{print $2}') }
killport () { kill -9 $(lsof -i tcp:$1 -t) }
