DIR=$( cd "$( dirname "$0" )" && pwd )

echo '--- vundle'
git clone https://github.com/gmarik/Vundle.vim.git $DIR/vim/bundle/Vundle.vim
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $DIR/zsh/antigen.zsh
vim +PluginInstall +qall

echo '--- zsh'
chsh -s /bin/zsh
cat <<EOM > $HOME/.zshenv
# don't load default zshrc
setopt no_global_rcs

# environment variables
export XDG_CONFIG_HOME="$HOME/.config"
# move zsh config to $XDG_CONFIG_HOME
export ZDOTDIR="\$XDG_CONFIG_HOME/zsh"
# move vim config to $XDG_CONFIG_HOME
export VIMINIT='let \$MYVIMRC="\$XDG_CONFIG_HOME/vim/vimrc" | source \$MYVIMRC'

# load zprofile
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# load nvm
export NVM_DIR=~/.nvm
if [[ -s $(/usr/local/bin/brew --prefix nvm)/nvm.sh ]]; then
  source $(/usr/local/bin/brew --prefix nvm)/nvm.sh
fi
EOM

echo '--- tmux'
brew install tmux
gem install tmuxinator
