autoload -Uz add-zsh-hook
chback_on_chdir () {
    eza -hl --git --group-directories-first
}
add-zsh-hook chpwd chback_on_chdir

#Alt-l to ll dir
bindkey -s "\el" "eza -hl --git --group-directories-first\n"
alias ll="eza -hl --git --group-directories-first"
