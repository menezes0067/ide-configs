# Fish shell configs 

if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source

# Aliases
alias l="ls -l"
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias v="nvim"

fzf --fish | source
