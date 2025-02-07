#aliases

alias .='cd ..'
alias zshrc='vim ~/.zsh_aliases'
alias rezsh='source ~/.zshrc'
alias cl='clear'
alias wifi='wifi-password'
alias cleanbranches='git branch | grep -v "master" | xargs git branch -D'

# git helpers

zc () { git checkout $1; }
zb () { git checkout -b $1 -t master; }
zm () { git commit -m $*; }
zp () { git push --follow-tags -u origin $(current_branch); }

alias zs='git status'
alias za='git add --all .'
alias zu='cl && git pull --rebase dev'
alias zup='git stash && zu && git stash pop'
alias zl='cl && git log --graph --decorate --all'
alias zf='git fetch'
alias zd='git diff'
alias zcd='git checkout dev'
alias zcm='git checkout main'

# project helpers

alias ni='cl && bun install'
alias ns='cl && bun start'
alias nt='cl && bun test'
alias ntw='cl && bun run test:watch'
alias nf='cl && bun run flow'
alias nfb='cl && bun run flow:build'
alias nd='cl && bun run dev'
alias nb='cl && bun run build'
alias nl='cl && bun run lint'
alias nr='cl && bun run'
alias x='bun run'

# process helpers

muxkill () { tmux kill-session -t $1; }
killprocess () { kill $(ps aux | grep $1 | awk '{print $2}') }
killport () { kill -9 $(lsof -i tcp:$1 -t) }
