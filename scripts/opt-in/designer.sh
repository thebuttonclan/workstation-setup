#!/usr/bin/env bash

# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing Designer applications"

# Graphic editing tools

brew cask install adobe-creative-cloud
# adobe-creative-cloud formula does not install itself
open '/usr/local/Caskroom/adobe-creative-cloud/latest/Creative Cloud Installer.app'
brew cask install sketch

# Screen recording tools

brew cask install recordit
brew cask install skitch
brew cask install licecap
brew cask install screenflow

set -e
