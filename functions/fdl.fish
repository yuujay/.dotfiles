function fdl
    set _container_id "echo {} | grep -o '[a-f0-9]\{12\}' | head -1 | tr -d \"\n\""

    set _container_logs "$_container_id | xargs docker logs"
    set _copy_container_id "$_container_id | pbcopy"
    set _log_in_less "$_container_logs | less -R"

    set _enter_container "echo $_container_id | xargs -oI{} bash -c \"docker exec -it {} bash\""
    set _stop_container "echo $_container_id | xargs -oI{} bash -c \"docker stop {}\""

    set _initial_query "docker ps -a --format 'table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}'"

    docker ps -a --format 'table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}'| \
        awk '(NR>1)' | \
        fzf  --preview=$_container_logs \
             --header "<space>: toggle preview | <enter>: view logs | <C-b>: Bash into container | <C-s>: Stop Container | <C-i>: Copy container hash " \
             --bind "enter:execute:$_log_in_less" \
             --bind "ctrl-i:execute:$_copy_container_id" \
             --bind "ctrl-i:+abort" \
             --bind "ctrl-b:execute:$_enter_container" \
             --bind "ctrl-s:execute:$_stop_container" \
             --bind "ctrl-s:+reload:$_initial_query"
end
