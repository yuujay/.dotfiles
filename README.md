# Gowtham's dotfiles <img src="./images/dotfiles-4.png" width="40" height="40" />

![Tests](https://github.com/yuujay/dotfiles/actions/workflows/ci.yml/badge.svg)
![Lint](https://github.com/yuujay/dotfiles/actions/workflows/lint.yml/badge.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/yuujay/dotfiles?color=FF)
![GitHub repo size](https://img.shields.io/github/repo-size/yuujay/dotfiles?label=size)
[![GitHub issues](https://img.shields.io/github/issues-raw/yuujay/dotfiles)](https://github.com/yuujay/dotfiles/issues)
![GitHub](https://img.shields.io/github/license/yuujay/dotfiles)


Aggregation of dotfiles that are managed by [GNU Stow](https://www.gnu.org/software/stow/). For more such inspirations, look in [here](http://dotfiles.github.io/).

After cloning this repo, run `stow-install` to automatically set up the development environment. Note that the install script is idempotent: it can safely be run multiple times.

## Index of Configuration Available

- Ansible
- Fish
- Git
- Hammerspoon(mac only)
- Karabinar(mac only)
- Kitty
- SSH
- Tmux
- Neovim
- iTerm

## Quick Start

To quickly setup the configurations, clone this repository

```git
git clone git@github.com:yuujay/dotfiles.git
```

Once cloned `cd` into the `dotfiles` directory and run the install script

```sh
sh stow-install
```

If everything goes well, you have the symlinks established for your `rc` and `config` files.

#### More information can be found in [wiki section](https://github.com/yuujay/dotfiles/wiki) (WIP)

#### Open items and enhancements can be found [here](https://github.com/yuujay/dotfiles/projects/1)
