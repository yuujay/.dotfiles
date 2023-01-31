function v
    if count $argv > /dev/null
        nvim $argv[1]
    else
        nvim . +":Telescope git_files theme=dropdown"
    end
end
