#!/bin/bash

# --- User Configuration ---
# Define the path to your Ghostty config file
CONFIG_FILE="$HOME/.config/ghostty/config"
# Define the line numbers you want to comment out
LINE_NUM_1=3
LINE_NUM_2=4
# --- End User Configuration ---

# Check if the file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: Ghostty config file not found at $CONFIG_FILE"
    exit 1
fi

echo "Attempting to comment out lines ${LINE_NUM_1} and ${LINE_NUM_2} in $CONFIG_FILE..."
echo "WARNING: This script modifies the file directly WITHOUT creating a backup."

# Use sed (macOS compatible -i '') to add '# ' to the beginning of the specified lines
# -i '' modifies the file in-place WITHOUT a backup extension on macOS/BSD
# Note: This script assumes the lines do not already start with '# '
sed -i '' \
    -e "${LINE_NUM_1}s/^/# /" \
    -e "${LINE_NUM_2}s/^/# /" \
    "$CONFIG_FILE"

# Check if sed command was successful
if [ $? -eq 0 ]; then
    echo "Successfully commented out lines ${LINE_NUM_1} and ${LINE_NUM_2} in $CONFIG_FILE."
else
    echo "Error: Failed to modify the file $CONFIG_FILE."
    exit 1
fi

exit 0
