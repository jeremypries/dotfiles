# Unset the default fish greeting text which messes up Zellij
set fish_greeting

if status is-interactive
    # At this point, specify the Zellij config dir, so we can launch it manually if we want to
    export ZELLIJ_CONFIG_DIR=$HOME/.config/zellij

    # Check if our Terminal emulator is Ghostty
    if [ "$TERM" = xterm-ghostty ]
        # Launch zellij automatically when ghostty is started
        eval (zellij setup --generate-auto-start fish | string collect)
    end

    # Commands to run in interactive sessions can go here
    starship init fish | source
    atuin init fish | source
end

# maps $code path
set -gx code ~/code

# brew sbin path
fish_add_path --path --append /opt/homebrew/sbin

# Initialize zoxide
zoxide init fish | source
