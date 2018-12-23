#!/bin/bash

# Variables
input_extension='*.png'
framerate=20
ouput='universe.mp4'
report='report.log'
filebase='giffile_' 

echo $'Converting to gif...'
ffmpeg -framerate "$framerate" \
    -pattern_type glob \
    -i "$input_extension" \
    -vf "crop=((in_w/2)*2):((in_h/2)*2)" \
    -c:v libx264 \
    -r 30 \
    -pix_fmt yuv420p \
    thing.mp4