export EDITOR='vim'

# load rvm
source ~/.rvm/scripts/rvm

# load antibody plugins
source <(antibody init)
antibody bundle < ~/.zsh-plugins.txt >> ~/.zsh-sourceables.sh
source ~/.zsh-sourceables.sh

# automatic ls on cd
auto-ls () { ls; }
chpwd_functions=( auto-ls $chpwd_functions )

# load aliases
source ~/.zsh-aliases.sh

# load tmuxinator
source ~/tmuxinator.zsh