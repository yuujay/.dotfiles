#*#*#*#**#*#*#* UJG: HAS LOT OF LINES REMOVED FOR SIMPLICITY #*#**##*#*#*#*#*#*#*
# Make sure to map
#   1. `S-Space` to `Esc`
#   2. `Caps-Lock` to `Ctrl`

if begin; status --is-interactive; and not functions -q -- iterm2_status; and [ "$ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX""$TERM" != screen ]; and [ "$TERM" != dumb ]; and [ "$TERM" != linux ]; end
  function iterm2_status
    printf "\033]133;D;%s\007" $argv
  end

  # Usage: iterm2_set_user_var key value
  # These variables show up in badges (and later in other places). For example
  # iterm2_set_user_var currentDirectory "$PWD"
  # Gives a variable accessible in a badge by \(user.currentDirectory)
  # Calls to this go in iterm2_print_user_vars.
  function iterm2_set_user_var
    printf "\033]1337;SetUserVar=%s=%s\007" "$argv[1]" (printf "%s" "$argv[2]" | base64 | tr -d "\n")
  end

  function iterm2_print_user_vars
    iterm2_set_user_var rubyVersion (ruby -v | awk '{ print $2 }')
    iterm2_set_user_var nodeVersion (node -v)
    iterm2_set_user_var localIP (localip)
    iterm2_set_user_var ipa (ipa)
  end

  function iterm2_write_remotehost_currentdir_uservars
    printf "\033]1337;RemoteHost=%s@%s\007\033]1337;CurrentDir=%s\007" $USER $iterm2_hostname $PWD

    # Users can define a function called iterm2_print_user_vars.
    # It should call iterm2_set_user_var and produce no other output.
   if functions -q -- iterm2_print_user_vars
      iterm2_print_user_vars
    end
  end

  functions -c fish_prompt iterm2_fish_prompt

  functions -c fish_mode_prompt iterm2_fish_mode_prompt
  function fish_mode_prompt --description 'Write out the mode prompt; do not replace this. Instead, change fish_mode_prompt before sourcing .iterm2_shell_integration.fish, or modify iterm2_fish_mode_prompt instead.'
     set -l last_status $status

     iterm2_status $last_status
     iterm2_write_remotehost_currentdir_uservars

     sh -c "exit $last_status"

     iterm2_fish_mode_prompt
  end

  function fish_prompt --description 'Write out the prompt; do not replace this. Instead, change fish_prompt before sourcing .iterm2_shell_integration.fish, or modify iterm2_fish_prompt instead.'
     # Remove the trailing newline from the original prompt. This is done
     # using the string builtin from fish, but to make sure any escape codes
     # are correctly interpreted, use %b for printf.
     printf "%b" (string join "\n" (iterm2_fish_prompt))
  end

  # If hostname -f is slow for you, set iterm2_hostname before sourcing this script
  if not set -q -g iterm2_hostname
    set -g iterm2_hostname (hostname -f 2>/dev/null)
    # some flavors of BSD (i.e. NetBSD and OpenBSD) don't have the -f option
    if test $status -ne 0
      set -g iterm2_hostname (hostname)
    end
  end

  iterm2_print_user_vars

  iterm2_write_remotehost_currentdir_uservars
  printf "\033]1337;ShellIntegrationVersion=10;shell=fish\007"
end
