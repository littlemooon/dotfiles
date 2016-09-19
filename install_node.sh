
echo '--- node'
brew install nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm install stable
nvm alias default stable
