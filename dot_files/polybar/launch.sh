#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch the polybarS named   example AND time
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# echo "---" | tee -a /tmp/polybar1.log
polybar -r example 2>&1 | tee -a /tmp/polybar1.log & disown
polybar -r time 2>&1 | tee -a /tmp/polybar2.log & disown

# echo "Bars launched..."