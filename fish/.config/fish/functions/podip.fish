function podip
    if [ (count $argv) -eq 1 ]

        # Exactly one argument
        echo "Using context: $(kubectx --current)"
        echo $(kubectl get pod -A -o jsonpath='{range.items[?(@.status.podIP=="$argv[1]")]}{.metadata.namespace}{"\t"}{.metadata.name}{"\n"}{end}')
        return
    else
        echo "usage: podip <IP_ADDRESS>"
        return
    end
end
