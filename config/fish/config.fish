if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting

    fish_vi_key_bindings
    starship init fish | source
    zoxide init fish | source
end

# opencode
fish_add_path /home/harin/.opencode/bin
alias vim nvim
alias open xdg-open

# Pi
fish_add_path "/home/harin/.local/share/pi-node/node-v22.23.1-linux-x64/bin"
