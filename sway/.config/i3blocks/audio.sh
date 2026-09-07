#! /bin/sh

echo $(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '/Volume:/ {printf "VOL %.0f", $2 * 100}')
