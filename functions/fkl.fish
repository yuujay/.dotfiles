function fkl
    set _pod_logs "echo {} | xargs -oI{} bash -c \"kubectl logs {+2} -n  {+1}\""
    set _copy_pod_name "echo {+2} | tr -d \"\n\" | pbcopy"
    set _log_in_less "$_pod_logs | less -R"
    set _enter_pod "echo {} | xargs -oI{} bash -c \"kubectl exec -it {+2} sh -n  {+1}\""

    kubectl get pods --all-namespaces | \
        awk '( NR>1 )' | \
        fzf  --preview=$_pod_logs \
             --header "<space>: toggle preview | <enter>: view logs | <C-b>: Bash into pod | <C-i>: Copy pod name " \
             --bind "enter:execute:$_log_in_less" \
             --bind "ctrl-i:execute:$_copy_pod_name" \
             --bind "ctrl-i:+abort" \
             --bind "ctrl-b:execute:$_enter_pod"
end
