#!/usr/bin/fish

function fish_mode_prompt
end
function fish_greeting
end

#Prompt
function fish_prompt
    set -l git_branch (git branch 2>/dev/null | sed -n '/\* /s///p')
    set_color red --bold 
    printf "["
    set_color yellow
    printf "%s" "$USER"
    set_color green
    printf "@"
    set_color blue
    printf "%s" "$hostname"
    set_color magenta    
    printf " %s" "$PWD"
    set_color red
    printf "]: "
    set_color yellow
    printf "%s " "$git_branch"
    set_color normal
end

# Cursor style
printf "\033[4 q"
