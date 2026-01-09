# aliases

alias o=opencode
alias c=claude
alias zshrc='vim ~/.zsh-aliases.sh'
alias rezsh='source ~/.zshrc'
alias cl='clear'
alias wifi='wifi-password'

# modern cli replacements
alias ls='eza'
alias ll='eza -la --git'
alias lt='eza -la --git --tree --level=2'
alias cat='bat --paging=never'
alias find='fd'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# git helpers

current_branch() { git branch --show-current; }

zc () { git checkout $1; }
zb () { git checkout -b $1 -t dev; }
zm () { git commit -m "$*"; }
zp () { git push --follow-tags -u origin $(current_branch); }
zap () {
    za
    zm "$*"
    zp
}

alias zs='git status'
alias za='git add --all'
alias zu='cl && git pull --rebase origin'
alias zum='cl && git pull --rebase origin main'
alias zup='git stash && zu && git stash pop'
alias zl='cl && git log --graph --decorate --all'
alias zf='git fetch'
alias zd='git diff'
alias zcd='git checkout dev'
alias zcm='git checkout main'
alias zpp='git push --force-with-lease'
alias cleanbranches='git branch | grep -v "main" | xargs git branch -D'

# project helpers

alias ni='cl && bun install'
alias nuke='cl && rm -rf node_modules && bun install'
alias ns='cl && bun run start'
alias nt='cl && bun run test'
alias ng='cl && bun run generate'
alias ngc='cl && bun run generate:client'
alias ntw='cl && bun run test:watch'
alias nd='cl && bun run dev'
alias nb='cl && bun run build'
alias nl='cl && bun run lint'
alias nr='cl && bun run resources'
alias x='cl && bun run'

# process helpers

killprocess () { pkill -f "$1"; }
killport () { kill -9 $(lsof -i tcp:$1 -t); }

alias gm='x awslogin && x update && x backend'
