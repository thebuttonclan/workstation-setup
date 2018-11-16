echo
echo "Installing NodeJS 10.13.0 with yarn & watchman"

brew install yarn
brew install watchman
brew install gpg # needed for asdf nodejs plugin
asdf plugin-add nodejs
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install nodejs 10.13.0
asdf global nodejs 10.13.0

# guard against pre-installed webstorm
brew cask install webstorm --force

source ${MY_DIR}/scripts/common/download-pivotal-ide-prefs.sh
pushd ~/workspace/pivotal_ide_prefs/cli
./bin/ide_prefs install --ide=webstorm
popd

bash-it enable plugin node
