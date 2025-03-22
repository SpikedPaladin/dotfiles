blub_left=''
blub_right=''
folder=''
time='󰔚'
prompt_symbol='󰁔'
reset=%{$reset_color%}

function wrap() {
    echo -n "%F{$1}$blub_left%f%K{$1}$2%k%F{$1}$blub_right%f"
}

function preexec() {
  timer=$(print -P %D{%s%3.})
}

function precmd() {
    exec_time=""
    if [ $timer ]; then
        now=$(print -P %D{%s%3.})
        local d_ms=$(($now - $timer))
        local d_s=$((d_ms / 1000))
        local ms=$((d_ms % 1000))
        local s=$((d_s % 60))
        local m=$(((d_s / 60) % 60))
        local h=$((d_s / 3600))
        
        if ((h > 0)); then exec_time=${h}h${m}m${s}s
        elif ((m > 0)); then exec_time=${m}m${s}s
        elif ((s > 0)); then exec_time=${s}s
        elif ((ms > 100)); then exec_time=${ms}ms
        fi
        
        if [ $exec_time ]; then
            exec_time=$(wrap 0 "%F{9}$time%f ${exec_time}")
        fi
        
        unset timer
    fi
    
    build_prompt
}

function build_prompt() {
    folder_icon="%K{14} $folder %k"
    folder_path="$folder_icon%K{8}%F{14}$blub_right%f%K{8} %~ %k%F{8}$blub_right%f"

    success_symbol="%F{10}%f"
    error_symbol="%F{9}%f"

    error_display=%(?,$success_symbol,$error_symbol)

    PROMPT="$folder_path $error_display "
    RPROMPT="$exec_time"
}
