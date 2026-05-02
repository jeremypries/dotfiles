function lpprj

    if [ (count $argv) -eq 1 ]
        # Exactly one argument
        gcloud projects describe $argv[1] --format json
        #| jq '.labels."team-name"'
        return
    else
        echo "usage: lpprj <PROJECT_ID>"
        return
    end
end
