echo
echo "Installing Mac App Store Command-line Interface"
brew install mas
echo "Installing Xcode"
# new app store product ids can be found using
# mas search Xcode
mas install 497799835
echo "Upgrading Outdated Apps"
mas upgrade
