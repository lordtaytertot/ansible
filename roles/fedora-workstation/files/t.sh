#!/usr/bin/env bash
tmux new-session -d
tmux split-window -v
tmux select-pane -t 1
tmux select-pane -t 0
tmux attach-session -d
