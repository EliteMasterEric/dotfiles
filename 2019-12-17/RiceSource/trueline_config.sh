declare -a TRUELINE_SEGMENTS=(
    'time,white,black'
    'user,black,white'
    'venv,black,purple'
    'git,grey,special_grey'
    'working_dir,mono,cursor_grey'
    'read_only,black,orange'
    'bg_jobs,black,orange'
    'exit_status,black,red'
)

declare -A TRUELINE_SYMBOLS=(
    [clock]='🕒'
)

_trueline_time_segment() {
    local prompt_time="${TRUELINE_SYMBOLS[clock]} \t"
    if [[ -n "$prompt_time" ]]; then
        local fg_color="$1"
        local bg_color="$2"
        local segment="$(_trueline_separator)"
        segment+="$(_trueline_content "$fg_color" "$bg_color" bold " $prompt_time ")"
        PS1+="$segment"
        _last_color=$bg_color
    fi
}

source ~/.config/trueline/trueline.sh