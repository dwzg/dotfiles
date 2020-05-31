set -x LOCATION "Rheinfelden (Baden)"
set -x TERMINAL st
set -x EDITOR vim

set -U fish_user_paths $HOME/.local/bin/ $PATH

if test "$TERM" = "linux"
    echo -en "\e]P0282828" # gruvbox_bg
    echo -en "\e]P1cc241d" # gruvbox_red
    echo -en "\e]P298971a" # gruvbox_green
    echo -en "\e]P3d79921" # gruvbox_yellow
    echo -en "\e]P4458588" # gruvbox_blue
    echo -en "\e]P5b16286" # gruvbox_purple
    echo -en "\e]P6689d6a" # gruvbox_aqua
    echo -en "\e]P7a89984" # gruvbox_gray
    echo -en "\e]P8928374" # gruvbox_brightgray
    echo -en "\e]P9fb4934" # gruvbox_brightred
    echo -en "\e]PAb8bb26" # gruvbox_brightgreen
    echo -en "\e]PBfabd2f" # gruvbox_brightyellow
    echo -en "\e]PC83a598" # gruvbox_brightblue
    echo -en "\e]PDd3869b" # gruvbox_brightpurple
    echo -en "\e]PE8ec07c" # gruvbox_brightaqua
    echo -en "\e]PFebdbb2" # gruvbox_fg
    clear # against bg artifacts
end

alias nano='vim'
alias ls='exa'
alias ll='exa -l'
alias la='exa -la'

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
