echo
echo "Installing Golang Development tools"

mkdir -p ~/go/src
asdf plugin-add golang
asdf install golang 1.11.2
asdf global golang 1.11.2
brew install dep

brew cask install goland

source ${MY_DIR}/scripts/common/download-pivotal-ide-prefs.sh
pushd ~/workspace/pivotal_ide_prefs/cli
./bin/ide_prefs install --ide=gogland
popd

bash-it enable plugin go
