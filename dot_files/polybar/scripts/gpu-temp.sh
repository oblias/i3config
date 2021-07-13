#!/bin/bash

# sensors | grep 'temp1:' | cut -c15-22 > /home/chaser/.cache/ctemp
nvidia-settings -t -q [gpu:0]/GPUCoreTemp > /tmp/gtemp

cat /tmp/gtemp

exit 0
