#!/bin/bash

# Get current brightness
current_brightness=$(brightnessctl get) 

# Calculate the percentage of current brightness
percentage=$(echo "scale=2; ($current_brightness / 120000) * 100" | bc)

# Check if percentage is less than 90
if (( $(echo "$percentage < 90" | bc -l) )); then
    # Increase brightness by 5%
    brightnessctl set +5%
fi
