echo
echo "Installing Python"

asdf plugin-add python
asdf install python 2.7.15
asdf global python 2.7.15

# guard against pre-installed pycharm
brew cask install pycharm --force

source ${MY_DIR}/scripts/common/download-pivotal-ide-prefs.sh
pushd ~/workspace/pivotal_ide_prefs/cli
./bin/ide_prefs install --ide=pycharm
popd

bash-it enable plugin python
