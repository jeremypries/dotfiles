if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end

# maps $code path
set -gx code /Users/jpries/code

# brew sbin path
fish_add_path --path --append /opt/homebrew/sbin
