DIR=$( cd "$( dirname "$0" )" && pwd )

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
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $DIR/zsh/antigen.zsh

# download fira code font
curl -L https://github.com/tonsky/FiraCode/releases/download/0.3/FiraCode-Regular.otf > $DIR/FiraCode-Regular.otf

# install vundle bundles
git clone https://github.com/gmarik/Vundle.vim.git $DIR/vim/bundle/Vundle.vim
vim +PluginInstall +qall

# set config when zshenv is run
cat <<EOM > $DIR/zsh/.zshenv
# don't load default zshrc
setopt no_global_rcs

# environmnet variables
export XDG_CONFIG_HOME="$DIR"
# move zsh config to $XDG_CONFIG_HOME
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
# move vim config to $XDG_CONFIG_HOME
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
EOM
