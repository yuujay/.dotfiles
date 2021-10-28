#!/usr/bin/env bash

echo 'Initializing setup...'
# xcode-select —-install

# Check for Homebrew to be present, install if it's missing
if test ! $(which brew); then
    echo 'Installing homebrew...'
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# echo 'Installing cask..'
# brew tap homebrew/cask

# echo 'Update homebrew recipes..'
# brew update

# Remove installation log from previous runs
rm installation.log progress.log

_packages=(
  ag
  bat
  ctags
  exa
  fd
  fish
  fzf
  gh
  git
  htop
  minikube
  neovim
  rsync
  the_silver_searcher
  tmux
  tree
  wget
)

_cask_packages=(
  firefox
  # font-hack-nerd-font
  hammerspoon
  iterm2
  karabiner-elements
  ngrok
  # vlc
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

install_cask_package() {
  # if test $(which $1); then
  # if [[ -d "/Applications/$1.app" || brew list --cask $1 ]]; then
  # TODO Check for cask brew list in `if` clause.
  if [[ -d "/Applications/$1.app" ]]; then
    echo "EXISTS - Package $1" >> installation.log
  else
    echo "Attempting to install $1 ..." >> installation.log
    if brew install --cask "$1" >> progress.log; then
      echo "SUCCESS - Package $1 installation" >> installation.log
    else
      echo "FAILED - Package $1 installation" >> installation.log
    fi
  fi
}

install_brew_package() {
  if brew list "$1" >/dev/null 2>&1; then
    echo "EXISTS - Package $1" >> installation.log
  else
    echo "Attempting to install $1" >> installation.log
    if brew install "$1" >> progress.log ; then
      echo "SUCCESS - Package $1 installed" >> installation.log
    else
      echo "FAILED - Package $1 installation" >> installation.log
    fi
  fi
}

install_package() {
    case $2 in
      CASK )
        install_cask_package $1
      ;;
      BREW )
        install_brew_package $1
      ;;
    esac
}

install_packages() {

  echo 'Installing brew packages...'
  for package in ${_packages[@]}; do
    install_package $package BREW
  done

  echo 'Installing cask packages...'
  for package in ${_cask_packages[@]}; do
    install_package $package CASK
  done

# install_packages _some_heavy_cask_packages
# install_packages _ruby_gems

  echo 'Check `installtion.log` to find status'
}

install_packages

main() {

  echo 'Cleaning up...'
  brew cleanup

  echo 'Macbook setup completed!'
}



# TODO: Clear this out when incorporating ansible

# Install `fisher` - plugin in manager for fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# Install fish plugins
fisher install jethrokuan/z
fisher install PatrickF1/fzf.fish
fisher install franciscolourenco/done
fisher install jorgebucaran/fishtape
# fisher install gazorby/fish-abbreviation-tips
