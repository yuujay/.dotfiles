function source_if_exists
    if [ -f $argv ]
        source $argv
    end
end
