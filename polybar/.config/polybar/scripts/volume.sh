#!/bin/sh

volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -oP '\d+' | tr -d '\n')

# Convert the value to a percentage
#percentage=$(echo "scale=0; $volume * 100" | bc)

muted=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -oP 'MUTED')
if [ -n "$muted" ]; then
    echo "MUTED"
else
    echo "$volume"
fi
