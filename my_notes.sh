#!/usr/bin/env bash

# Define terminal, no border, size and location, run vi on selected file
VIEDIT="/usr/bin/terminator --geometry=1200x600+400+200 -x vi"

# Define the file path for editing this script
FILE_LAST="$HOME/bin/my_notes.sh"

# Set $TRM
TRM="/usr/bin/terminator --geometry=1200x600+400+200"

# Create an array of options
options=(
	"|-- New Note"
	"|-- Edit Note"
	"|"
    "|-- my_notes.sh"
)

# Use rofi to display the options
selected=$(printf '%s\n' "${options[@]}" | rofi -theme-str 'window {width: 400;}' -dmenu -l 4 -p "$(date)")

if [[ "$selected" == "|-- New Note" ]]; then
    $HOME/bin/my_note.sh
elif [[ "$selected" == "|-- Edit Note" ]]; then
	$TRM --title "Edit Note" -x ranger -c $HOME/Notes
elif [[ "$selected" == "|-- my_notes.sh" ]]; then
    $VIEDIT "$FILE_LAST"
else
    echo "No valid option selected."
fi
