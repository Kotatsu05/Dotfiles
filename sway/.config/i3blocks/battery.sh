#! /bin/sh

echo $(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null | awk '{print "BAT "$1"%"}')
