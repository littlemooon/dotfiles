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

# additional aliases
alias .='cd ..'
alias npmclear='sudo rm -rf node_modules && sudo npm cache clean && npm i'
alias zshrc='vim ~/.config/zsh/.zshrc'
alias rezsh='source ~/.config/zsh/.zshrc'

# set vim as default
export EDITOR=/usr/bin/vim

# run tmuxinator
source ~/.config/tmux/tmuxinator.zsh
