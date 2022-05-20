function fgd
    set _git_diff "git diff --color=always {-1}"
    set _stage_file "echo {-1} | xargs git stage"

    git status -s |  \
        fzf --preview=$_git_diff \
            --header "<space>: toggle preview | <enter>: view commit diff | <C-s> stage file" \
            --bind "enter:execute:$_git_diff | less -R" \
            --bind "ctrl-s:execute:$_stage_file" \
            --bind "ctrl-s:+abort"
end
