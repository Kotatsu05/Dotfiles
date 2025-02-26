#!/bin/sh

# Terminate already running bar instances
pkill polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar barone 2>&1 | tee -a /tmp/polybar.log & disown
polybar bartwo 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
