# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing Button-specific applications"

# Password Management

brew cask install 1password
brew cask install 1password-cli

# Productivity

brew cask install omnifocus
set -e
