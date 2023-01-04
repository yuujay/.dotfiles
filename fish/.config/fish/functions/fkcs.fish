# fuzzy way to switch between k8s contexts

function fkcs
    set _context_name "echo {} | awk '{print \$1}'"

    kubectl config use-context (kubectl config get-contexts | awk '(NR>1)' | awk 'BEGIN {  printf "%-70s %5s\n", "NAME", "CLUSTER" } {printf "%-70s %5s\n", $3, $2}' | fzf \
             --bind "enter:execute:$_context_name" \
             --bind "enter:+abort"
             )
end
