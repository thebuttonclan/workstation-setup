echo
echo "Installing Postgres 9.6.11"

# use https://github.com/smashedtoatoms/asdf-postgres
asdf plugin-add postgres
asdf install postgres 9.6.11
asdf global postgres 9.6.11
pg_ctl start
createdb $(whoami) || true

# guard against pre-installed datagrip
brew cask install datagrip --force

source ${MY_DIR}/scripts/common/download-pivotal-ide-prefs.sh
pushd ~/workspace/pivotal_ide_prefs/cli
# TODO: add datagrip prefs
# ./bin/ide_prefs install --ide=datagrip
popd

bash-it enable plugin postgres
