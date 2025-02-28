#!/bin/sh

volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -oP '\d+' | tr -d '\n')

# Convert the value to a percentage
#percentage=$(echo "scale=0; $volume * 100" | bc)

if [[ "${volume:0:1}" == "0" ]]; then
    # Remove the first character
    volume="${volume:1}"
fi

muted=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -oP 'MUTED')
if [ -n "$muted" ]; then
    echo "MUTED"
else
    echo "$volume"
fi
