echo "Sourcing files from $FISH_HOME/config.fish"

fish_vi_key_bindings

# this is the only environment variable to be declared out side of `$FISH_HOME/fish_env`
set FISH_HOME ~/.config/fish
test -e $FISH_HOME/fish_env ; and source $FISH_HOME/fish_env

test -e $HOME/.aliases/aliases ; and source $HOME/.aliases/aliases
test -e $HOME/.aliases/docker.aliases ; and source $HOME/.aliases/docker.aliases
test -e $HOME/.aliases/mathworks.aliases ; and source $HOME/.aliases/mathworks.aliases
test -e $HOME/.aliases/git.aliases ; and source $HOME/.aliases/git.aliases
test -e $HOME/.iterm2_shell_integration.fish ; and source $HOME/.iterm2_shell_integration.fish

# If tmux is hung for some reason, delete the restore resurrects from `~/.tmux/resurrect`
# If that doesn't help try following https://stackoverflow.com/questions/7408068
# Essentially we need to delete `/tmp/tmux-XXXXX` directory

# test -e $FISH_HOME/bash_scripts/always_in_tmux && always_in_tmux

function iterm2_print_user_vars
    iterm2_set_user_var rubyVersion (ruby -v | awk '{ print $2 }')
    iterm2_set_user_var nodeVersion (node -v)
    iterm2_set_user_var localIP (localip)
    iterm2_set_user_var ipa (ipa)
end

# To install and configure rvm in fish.
# More info here
# https://rvm.io/integration/fish
# rvm default

# Plugin manager for fish
# curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

