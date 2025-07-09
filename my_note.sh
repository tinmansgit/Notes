#!/usr/bin/env bash

cd /media/coder/AV/Notes

date_str=$(date +"%Y-%m-%d_%H-%M-%S")

filename="${date_str}.md"

touch "$filename"

terminator --geometry=600x600+700+200 -x vi "$filename"
