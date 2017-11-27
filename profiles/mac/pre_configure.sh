#!/bin/bash

# Disable Gate Keeper
spctl --master-disable

# Autohide dock
defaults write com.apple.dock autohide -bool TRUE

# Enable Dark mode
defaults write /Library/Preferences/.GlobalPreferences AppleInterfaceTheme Dark
