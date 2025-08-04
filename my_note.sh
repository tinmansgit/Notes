#!/usr/bin/env bash

# change to a location on your system
cd /media/coder/AV/Notes

date_str=$(date +"%Y-%m-%d_%H-%M-%S")

filename="${date_str}.md"

touch "$filename"

# change to your choice terminal 
terminator --geometry=600x600+700+200 -x vi "$filename"
