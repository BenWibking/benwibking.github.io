#!/bin/sh

INPUT=$1
OUTPUT=$(basename -s .mp4 $1)_watermark.mp4

ffmpeg -i $INPUT -vf "drawtext=fontfile=/System/Library/Fonts/Avenir Next Condensed.ttc:text='CC BY 4.0 © 2024 Ben Wibking':fontcolor=black:fontsize=24:box=1:boxcolor=black@0.25:boxborderw=5:x=0.9*(w-text_w):y=0.9*(h-text_h)" -codec:a copy $OUTPUT
