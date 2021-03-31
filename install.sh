#!/usr/bin/env bash

# Forked from https://github.com/mathiasbynens/dotfiles/blob/main/brew.sh

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install a modern version of Zsh.
brew install zsh

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/zsh" /etc/shells; then
  echo "${BREW_PREFIX}/bin/zsh" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/zsh";
fi;

# Tap a few caskrooms
brew tap zacs/personal
brew tap homebrew/cask-fonts

# Install more recent versions of some macOS tools.
brew install wget --with-iri
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install archey
brew install awscli
brew install mas
brew install git
brew install hub
brew install python
brew install wget
brew install youtube-dl

# Install fonts.
brew cask install font-cascadia-mono
brew cask install font-consolas
brew cask install font-fantasque-sans-mono
brew cask install font-jetbrains-mono
brew cask install font-operator-mono
brew cask install font-source-code-pro

# Install casks.
brew cask install 1password
brew cask install alfred
brew cask install arq
brew cask install dropbox
brew cask install istat-menus
brew cask install karabiner-elements
brew cask install ksdiff
brew cask install plexamp
brew cask install slack
brew cask install soulver
brew cask install steermouse
brew cask install the-unarchiver
brew cask install transmit
brew cask install visual-studio-code
brew cask install vlc
brew cask install zoomus

# Install Mac App Store apps.
mas install 587512244 # Kaleidoscope (2.3.2)
mas install 441258766 # Magnet (2.4.5)
mas install 1224268771 # Screens (4.7.8)
mas install 1148868081 # iStat View (3.04)

# Remove outdated versions from the cellar.
brew cleanup
