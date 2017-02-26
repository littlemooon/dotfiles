echo '--- apps'

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

brew cask install google-chrome
brew cask install bettertouchtool
brew cask install flux
brew cask install spotify
brew cask install vlc
brew cask install franz

brew tap caskroom/fonts
brew cask install font-fira-code

brew cask cleanup
