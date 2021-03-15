function source_if_exists
    if [ -e $argv ]
        source $argv
    else
        echo 'ERROR : File (argv) Not Found.' 
    end
end
