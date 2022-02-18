# Gowtham's dotfiles  💾

![Tests](https://github.com/yuujay/dotfiles/actions/workflows/ci.yml/badge.svg)

Aggregation of dotFiles powered by [dotBot](https://github.com/anishathalye/dotbot). For more such inspirations, look in [here](http://dotfiles.github.io/).

After cloning this repo, run install to automatically set up the development environment. Note that the install script is idempotent: it can safely be run multiple times.

The set up was inspired from the [blog post](https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/)

## Index of Configuration Available

- Vim/Neovim
- Tmux
- Git
- Fish
- Hammerspoon
- Karabinar(mac only)
- iTerm
- Ansible

## Quick Start

To quickly setup the configurations, clone this repository

```git
git clone https://github.com/yuujay/dotfiles
```

Once cloned `cd` into the `dotfiles` directory and run the install script

```sh
sh install
```

If everything goes well, you have the symlinks established for your `rc` and `config` files.

## TODO 
ADD ANSIBLE INSTALLATION STEPS

## Troubleshooting

#### Terminal starts to show ESC[ instead of colors
This is caused due to less being misconfigured. To fix this run the following

```fish
set LESS "-eirMX"

<!-- if the above one doesnt work, try setting the git config -->
git config core.pager 'less -R'
```

- Open items and enhancements can be found [here](https://github.com/yuujay/dotfiles/projects/1)
