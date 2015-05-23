
# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor # if this fails run: export PATH="/usr/local/bin:$PATH"

# install packages
brew install node
brew install git
brew install tmux

# set git keychain
git config --global credential.helper osxkeychain

# download antigen
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $HOME/.config/zsh/antigen.zsh

# download fira code font
curl -L https://github.com/tonsky/FiraCode/releases/download/0.3/FiraCode-Regular.otf > $HOME/.config/FiraCode-Regular.otf

# set config when zshenv is run
cat <<EOM > $HOME/.zshenv
# don't load default zshrc
setopt no_global_rcs

# environmnet variables
export XDG_CONFIG_HOME="$HOME/.config"
# move zsh config to $XDG_CONFIG_HOME
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
# move vim config to $XDG_CONFIG_HOME
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
EOM
