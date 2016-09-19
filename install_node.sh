echo '--- node'
brew install nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm install stable
nvm alias default stable
npm i eslint eslint-config-standard eslint-config-standard-react eslint-import-resolver-webpack eslint-plugin-babel eslint-plugin-import eslint-plugin-promise eslint-plugin-react eslint-plugin-standard serverless node-check-updates -g
