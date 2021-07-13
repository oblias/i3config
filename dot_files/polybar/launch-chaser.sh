#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch the polybar named  chaser
# echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# echo "---" | tee -a /tmp/polybar1.log
# polybar -r chaser 2>&1 | tee -a /tmp/polybar1.log & disown
polybar -r chaser &

# echo "Bars launched..."