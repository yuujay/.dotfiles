#!/usr/bin/env bash

echo 'Initializing setup...'
xcode-select —-install

# Check for Homebrew to be present, install if it's missing
if test ! $(which brew); then
    echo 'Installing homebrew...'
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo 'Installing cask..'
brew tap caskroom/cask

echo 'Update homebrew recipes'
brew update

_packages=(
  ag
  bat
  exa
  rsync
  cask
  ctags
  fish
  fzf
  git
  htop
  neovim
  the_silver_searcher
  tmux
  wget
)

_cask_packages=(
  firefox
  font-hack-nerd-font
  hammerspoon
  iterm2
  karabiner-elements
  ngrok
  tree
  vlc
)

_some_heavy_cask_packages=(
  brave-browser
  docker
  google-chrome
  visual-studio-code
)

_ruby_gems=(
  solargraph
  rubocop
)


install_packages() {
  # TODO: Fix the $1 and see if it works with package list format that we use.
  # Call this function with first arugments as the list of packages
  for package in $1
    do
      echo "Checking for cask package > ${cask}"
        if brew cask list "${package}" >/dev/null 2>&1; then
          echo "Package ${package} already installed."
        else
          echo "\n"
          echo "Attempting to install ${package}..."
          if brew cask install "${package}"; then
            echo "Package ${package} installed.\n"
          else
            echo "Package ${package} install failed.\n"
          fi
        fi
    done
}


main() {
  install_packages _packages
  install_packages _cask_packages
  # install_packages _some_heavy_cask_packages
  # install_packages _ruby_gems

  echo 'Cleaning up...'
  brew cleanup

  echo 'Macbook setup completed!'
}

