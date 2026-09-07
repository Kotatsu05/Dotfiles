#!/bin/sh

echo "BRT $(brightnessctl -m | cut -d',' -f4)"
