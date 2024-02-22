#!/usr/bin/env bash

tmux attach-session -t $(tmux list-sessions | tr ':' ' ' | fzf-tmux -p 55%,60% \
--with-nth=1 --delimiter=' ' --no-sort \
--border-label ' sessions ' --prompt '⚡  ' \
| awk -F ' ' '{print $1}')
