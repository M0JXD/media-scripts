#!/bin/sh

# From: https://blog.pkh.me/p/21-high-quality-gif-with-ffmpeg.html
# Given he's encouraging it's use I'm presuming a liberal license.

palette="/tmp/palette.png"
filters="fps=15,scale=320:-1:flags=lanczos"

ffmpeg -v warning -i $1 -vf "$filters,palettegen" -y $palette
ffmpeg -v warning -i $1 -i $palette -lavfi "$filters [x]; [x][1:v] paletteuse" -y $2
