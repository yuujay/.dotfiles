function gcop
    git log \
        --reverse \
        --color=always \
        --pretty=format:"%C(yellow)%h %C(blue)%ar%C(auto)%d %C(yellow)%s%+b %C(black)%ae" |
        fzf -i -e +s \
            --reverse \
            --tiebreak=index \
            --no-multi \
            --ansi \
            --preview="echo {} |
            grep -o '[a-f0-9]\{7\}' |
            head -1 |
            xargs -I % sh -c 'git show --color=always % '" 

end
