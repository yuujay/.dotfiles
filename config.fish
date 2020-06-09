set -a PATH usr/local/bin /usr/bin /bin /usr/sbin /sbin
set FISH_HOME ~/.config/fish

echo "Sourcing files from $FISH_HOME/config.fish"

source "$HOME/.aliases"
source "$HOME/.mathworks_aliases"
source "$HOME/.docker_aliases"

fish_vi_key_bindings

test -e ~/.iterm2_shell_integration.fish ; and source ~/.iterm2_shell_integration.fish

function iterm2_print_user_vars
    iterm2_set_user_var rubyVersion (ruby -v | awk '{ print $2 }')
    iterm2_set_user_var nodeVersion (node -v)
    iterm2_set_user_var localIP (localip)
    iterm2_set_user_var ipa (ipa)
end

