# update path
export PATH=/usr/local/bin:$PATH:/usr/local:/usr/sbin

# load antigen
export ANTIGEN_DEFAULT_REPO_URL=https://github.com/sharat87/oh-my-zsh.git
source ~/.config/zsh/antigen.zsh

# load oh-my-zsh
antigen use oh-my-zsh

# add bundles
antigen bundles <<EOBUNDLES
brew
npm
sublime
osx
command-not-found
git
autojump
zsh-users/zsh-completions
zsh-users/zsh-syntax-highlighting
zsh-users/zsh-history-substring-search
tarruda/zsh-autosuggestions
djui/alias-tips
rupa/z
EOBUNDLES

# track the most used directories, based on 'frecency'
add-zsh-hook precmd _z_precmd
function _z_precmd { _z --add "$PWD" }

# setup autosuggestions
zle-line-init() { zle autosuggest-start }
zle -N zle-line-init

# bind UP and DOWN arrow keys to history search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# prompt theme
PROMPT='
%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[blue]%}%m%{$reset_color%} in %{$fg[green]%}%~%{$reset_color%}$(git_prompt_info)
- '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✘"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[red]%}?"
ZSH_THEME_GIT_PROMPT_ADDED=" %{$fg[red]}+"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$fg[red]}-"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$fg[red]}%%"
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$fg[red]}*"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$fg[red]}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

local return_status="%{$fg[red]%}%(?..✘)%{$reset_color%}"
RPROMPT='${return_status}'

# apply the above
antigen apply

# automatic ls on cd
auto-ls () { ls; }
chpwd_functions=( auto-ls $chpwd_functions )

# git helpers
zc () { git checkout $1; }
zb () { git checkout -b $1 -t develop; }
zm () { git commit -m $*; }
zp () { git push -u origin $(current_branch); }

# additional aliases
alias .='cd ..'
alias zshrc='vim ~/.config/zsh/.zshrc'
alias rezsh='source ~/.config/zsh/.zshrc'

alias zs='git status'
alias za='git add --all .'
alias zu='clear && git pull --rebase origin develop'
alias zup='git stash && zu && git stash pop'
alias zl='clear && git log --graph --decorate --all'
alias zf='git fetch'
alias zd='git diff'

alias ri='clear && bundle install’
alias rc='clear && bundle exec rails console'
alias rs='clear && bundle exec rails server'
alias rt='clear && bundle exec rspec'
alias rl='clear && bundle exec rubocop'

alias vr='clear && vagrant resume'
alias vu='clear && vagrant up'

alias li='clear && lein install’
alias lm='clear && lein migrate'
alias ly='clear && lein sync’

alias ni=‘clear && npm i'
alias nc='clear && sudo rm -rf node_modules && sudo npm cache clean && npm i'
alias ns='clear && npm start'
alias nt='clear && npm test'
alias npmclear=‘clear && sudo rm -rf node_modules && sudo npm cache clean && npm i'

muxkill () { tmux kill-session -t $1; }

# set vim as default
export EDITOR=/usr/bin/vim

# run tmuxinator
source ~/.config/tmux/tmuxinator.zsh

# run nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
