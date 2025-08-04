#!/usr/bin/env bash

VIEDIT="/usr/bin/terminator --geometry=1200x600+400+200 -x vi"

FILE_LAST="$HOME/bin/my_notes.sh"

TRM="/usr/bin/terminator --geometry=1200x600+400+200"

options=(
	"|-- New Note"
	"|-- Edit Note"
	"|"
    "|-- my_notes.sh"
)

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
