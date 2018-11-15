#!/bin/bash

i3-msg restart
sleep 1
killall polybar
polybar default -r -q 2>&1 > /dev/null
polybar bottom -r -q 2>&1 > /dev/null
sleep 1
killall polybar
polybar default -r -q 2>&1 > /dev/null
polybar bottom -r -q 2>&1 > /dev/null
