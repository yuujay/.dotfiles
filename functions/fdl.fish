function fdl
    set _container_id "echo {} | grep -o '[a-f0-9]\{12\}' | tr -d \"\n\""
    set _container_logs "$_container_id | xargs docker logs"
    set _copy_container_id "$_container_id | pbcopy"

    set _log_in_less "$_container_logs | less -R"
    # set _enter_container "echo $_container_id | less -R"
    # This works - echo 'e9082f976e67' | xargs -oI{} sh -c 'docker exec -it {} sh'
    set _enter_container "echo $_container_id | xargs -oI{} sh -c 'echo {} | less'"

    docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Status}}" | \
        awk '(NR>1)' | \
        fzf  --preview=$_container_logs \
             --header "<enter>: view logs, <C-i>: Copy container hash,<C-b>: Bash into container" \
             --bind "enter:execute:$_log_in_less" \
             --bind "ctrl-i:execute:$_copy_container_id" \
             --bind "ctrl-i:+abort" \
             --bind "ctrl-b:execute:$_enter_container"
end
