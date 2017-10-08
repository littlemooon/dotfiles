echo '--- apps'

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

brew cask install 1password
brew cask install bettertouchtool
brew cask install dropbox
brew cask install flux
brew cask install franz
brew cask install github-desktop
brew cask install google-chrome
brew cask install spotify
brew cask install totalspaces
brew cask install visual-studio-code
brew cask install vlc

brew tap caskroom/fonts
brew cask install font-fira-code

brew cask cleanup
