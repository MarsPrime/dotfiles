#! /bin/bash

current_status=
current_panel=$1
battery_status=$(acpi | awk '{print $3}')

if [ "$battery_status" = "Discharging," ]; then 

     current_status=3

elif [ "$battery_status" = "Charging," ]; then

     current_status=2

else

     current_status=1
fi

if [ "$current_status" = "$current_panel" ]; then
     echo "1"
else
     echo "0"
fi

