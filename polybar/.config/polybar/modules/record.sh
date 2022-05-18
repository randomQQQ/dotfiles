#!/bin/sh

nmodules="$(ps aux | grep ffmpeg | wc -l)"

if [ $nmodules != 1 ]; then
    echo ""
else
    echo "" 
fi

