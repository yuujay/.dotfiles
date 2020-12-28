set -a PATH usr/local/bin /usr/bin /bin /usr/sbin /sbin /mathworks/hub/share/sbtools/bin/maci64 ~/.config/fish/bash_scripts /Users/gumamahe/.gem/ruby/2.6.0/bin
set FISH_HOME ~/.config/fish
set FZF_DEFAULT_COMMAND 'ag -g ""'

echo "Sourcing files from $FISH_HOME/config.fish"

source "$HOME/.aliases"
source "$HOME/.docker.aliases"
source "$HOME/.git.aliases"
source "$HOME/.mathworks.aliases"

fish_vi_key_bindings

test -e $FISH_HOME/bash_scripts/always_in_tmux && always_in_tmux
test -e ~/.iterm2_shell_integration.fish ; and source ~/.iterm2_shell_integration.fish

function iterm2_print_user_vars
    iterm2_set_user_var rubyVersion (ruby -v | awk '{ print $2 }')
    iterm2_set_user_var nodeVersion (node -v)
    iterm2_set_user_var localIP (localip)
    iterm2_set_user_var ipa (ipa)
end

# To install and configure rvm in fish.
# More info here
# https://rvm.io/integration/fish
rvm default
