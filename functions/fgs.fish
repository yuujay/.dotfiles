function fgs
    set _git_diff "git diff --color=always {-1}"

    git status -s |  \
        fzf --preview=$_git_diff \
            --header "<space>: toggle preview | <enter>: view commit diff " \
            --bind "enter:execute:$_git_diff | less -R"
end
