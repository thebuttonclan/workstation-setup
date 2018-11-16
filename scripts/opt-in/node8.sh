echo
echo "Installing NodeJS 8.12.0"

brew install node@8
brew link node@8 --force

echo
echo "Installing global NodeJS Packages"

npm install --global yo
npm install --global webpack
npm install --global grunt-cli
npm install --global gulp-cli

echo
echo "Installing NodeJS 10.13.0 with yarn"

brew install yarn
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
