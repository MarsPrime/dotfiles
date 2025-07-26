#! /bin/bash

argument=$1
speaker_volume=$(amixer sget Master | grep -o "[0-9]*%" | head -n 1 | tr -d '%')
mic_volume=$(amixer sget Capture | grep -o "[0-9]*%" | head -n 1 | tr -d '%')
random_number=$(( 0 + RANDOM % (25 - 0 + 1) ))
if [ "$argument" = "0" ]; then
     echo $(("$speaker_volume" / 4))

elif [ "$argument" = "1" ]; then
     echo $(("$mic_volume" / 4))

elif [ "$argument" = "2" ]; then
     echo $random_number

fi
