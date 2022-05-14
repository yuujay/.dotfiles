function fgl
    set _viewGitLogLine "echo {} | \
    grep -o '[a-f0-9]\{7\}' | \
    head -1 | \
    xargs -I % sh -c 'git show --color=always %'"

    set _gitLogLineToHash "echo -n {} | grep -o '[a-f0-9]\{7\}' | head -1 | tr -d \"\n\""

    git log \
        --color=always \
        --pretty=format:"%C(dim)%C(yellow)%h%C(reset) %C(auto)%d %C(brightgreen)%s%  %C(black)%cN %ar"|
        fzf -i -e +s \
            --reverse \
            --tiebreak=index \
            --no-multi \
            --ansi \
            --border \
            --preview=$_viewGitLogLine \
            --header "<enter>: view diff, <C-i>: Copy hash" \
            --bind "enter:execute:$_viewGitLogLine | less -R" \
            --bind "ctrl-i:execute-silent:$_gitLogLineToHash | pbcopy" \
            --bind "ctrl-i:+abort"
end
