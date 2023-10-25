#!/bin/bash

# Get current brightness
current_brightness=$(brightnessctl get) 

# Calculate the percentage of current brightness
percentage=$(echo "scale=2; ($current_brightness / 120000) * 100" | bc)

# Check if percentage is  greater than 10
if (( $(echo "$percentage > 10" | bc -l) )); then
    # decrease brightness by 10%
    brightnessctl set 10%-
fi
