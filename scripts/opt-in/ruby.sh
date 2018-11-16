echo
echo "Installing Ruby tools and Ruby 2.3.1"
cp files/.irbrc ~/.irbrc
brew install readline
asdf plugin-add ruby
asdf install ruby 2.3.1
asdf global ruby 2.3.1
gem install bundler

# guard against pre-installed rubymine
brew cask install rubymine --force

source ${MY_DIR}/scripts/common/download-pivotal-ide-prefs.sh
pushd ~/workspace/pivotal_ide_prefs/cli
./bin/ide_prefs install --ide=rubymine
popd

bash-it enable plugin ruby
