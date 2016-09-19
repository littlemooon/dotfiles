# update path
export PATH=/usr/local/bin:$PATH:/usr/local:/usr/sbin

# load antigen
export ANTIGEN_DEFAULT_REPO_URL=https://github.com/sharat87/oh-my-zsh.git
source ~/.config/zsh/antigen.zsh
autoload -U add-zsh-hook

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

# bind UP and DOWN arrow keys to history search
zmodload zsh/terminfo
# bindkey "$terminfo[kcuu1]" history-substring-search-up
# bindkey "$terminfo[kcud1]" history-substring-search-down

# apply the above
antigen apply

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
muxkill () { tmux kill-session -t $1; }
killprocess () { kill $(ps aux | grep $1 | awk '{print $2}') }

# set vim as default
export EDITOR=/usr/bin/vim

# run tmuxinator
source ~/.config/tmux/tmuxinator.zsh

# run nvmadd
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# run rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# prompt theme
PROMPT='
%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[blue]%}%m%{$reset_color%} in %{$fg[green]%}%~%{$reset_color%}$(git_prompt_info)
- '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}X"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[red]%}?"
ZSH_THEME_GIT_PROMPT_ADDED=" %{$fg[red]}+"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$fg[red]}-"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$fg[red]}%%"
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$fg[red]}*"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$fg[red]}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

local return_status="%{$fg[red]%}%(?..X)%{$reset_color%}"
RPROMPT='${return_status}'
