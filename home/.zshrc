export EDITOR='vim'

# History settings
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS  # no duplicate entries
setopt HIST_SAVE_NO_DUPS     # don't save duplicates
setopt SHARE_HISTORY         # share history between sessions

# load antidote plugins
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load

# load aliases
source ~/.zsh-aliases.sh

# mise - manages node, bun, etc.
eval "$(mise activate zsh)"

# zoxide - smarter cd
eval "$(zoxide init zsh)"

# fzf - fuzzy finder (Ctrl+R for history)
source <(fzf --zsh)

# starship prompt
eval "$(starship init zsh)"

# PATH (after tool activations so they take precedence)
export PATH=$HOME/.local/bin:/opt/homebrew/bin:/opt/homebrew/sbin:$PATH

# docker (added by Docker Desktop)
[ -f "$HOME/.docker/init-zsh.sh" ] && source "$HOME/.docker/init-zsh.sh"
