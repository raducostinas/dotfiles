#!/usr/bin/env bash

tmux_sessions=$(tmux list-sessions)

new_session_option="New Session: "

options="$tmux_sessions\n$new_session_option"

select_option=$(echo -e "$options" | tr ':' ' ' | fzf-tmux -p 55%,60% \
--with-nth=1 --delimiter=' ' --no-sort \
--border-label ' sessions ' --prompt '⚡  ' \
| awk -F ' ' '{print $1}')

if [ "$selected_option" == "$custom_option" ]; then
    # Handle the custom option
    tmux
else
    # Handle tmux session selection
    tmux attach-session -t "$selected_option"
fi
#tmux attach-session -t $(tmux list-sessions | tr ':' ' ' | fzf-tmux -p 55%,60% \
#--with-nth=1 --delimiter=' ' --no-sort \
#--border-label ' sessions ' --prompt '⚡  ' \
#| awk -F ' ' '{print $1}')
