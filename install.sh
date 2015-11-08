DIR=$( cd "$( dirname "$0" )" && pwd )

echo '--- downloading vundle'
git clone https://github.com/gmarik/Vundle.vim.git $DIR/vim/bundle/Vundle.vim

echo '--- setting git keychain'
git config --global credential.helper osxkeychain

echo '--- downloading antigen'
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $DIR/zsh/antigen.zsh

echo '--- setting zshenv'
cat <<EOM > $HOME/.zshenv
# don't load default zshrc
setopt no_global_rcs

# environmnet variables
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
if [[ -s $(brew --prefix nvm)/nvm.sh ]]; then
  source $(brew --prefix nvm)/nvm.sh
fi
EOM

echo '--- set zsh as default:'
chsh -s /bin/zsh

echo '--- installing vundle bundles'
vim +PluginInstall +qall

echo '--- installing apps'
brew install mysql
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew cask install alfred
brew cask alfred link
brew cask install keepingyouawake
brew cask install google-chrome
brew cask install chromecast
brew cask install tunnelblick
brew cask install firefoxdeveloperedition
brew cask install bettertouchtool
brew cask install flux
brew cask install dash
brew cask install spotify
brew cask install virtualbox
brew cask install vagrant
brew cask install slack
brew cask install sublime-text3
brew cask install skype
brew cask install java
brew cask install vlc
brew cask install github-desktop
brew cask install sequel-pro
brew tap caskroom/fonts
brew cask install font-inconsolata
brew cask install font-fira-sans
brew cask install font-fira-code
brew cask install font-droid-sans
brew cask install font-droid-sans-mono
brew cask cleanup
