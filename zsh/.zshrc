export EDITOR='vim'

# load antidote plugins
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load

# automatic ls on cd
auto-ls () { ls; }
chpwd_functions=( auto-ls $chpwd_functions )

# load aliases
source ~/.zsh_aliases.sh

export PATH=/opt/homebrew/bin:$PATH
