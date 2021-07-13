#!/bin/bash

sensors | grep 'temp1:' | cut -c15-22 > /tmp/ctemp

cat /tmp/ctemp

exit 0
