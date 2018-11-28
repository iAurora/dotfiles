#!/usr/bin/env bash

# Prompt for ComputerName and HostName for this installation
echo -n 'Enter Computer Name (network-dash): '
read COMPUTERNAME

echo -n 'EnterHost Name (terminal prompt): '
read HOSTNAME

# Install apps from Brewfile
brew tap Homebrew/bundle
brew bundle
brew cleanup

# Ask for the administrator password upfront
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make Bash4 default shell
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
chsh -s /usr/local/bin/bash

# Install global Node packages [npm list -g --depth=0]
npm install -g gulp-cli diff-so-fancy git-open git-recent imageoptim-cli

# Make Textbar scripts executable
chmod +x ~/Library/Mobile\ Documents/com~apple~CloudDocs/config/textbar/*

# Set macOS and apps preferences
source ~/.etc/app-settings.sh
source ~/.etc/macos.sh