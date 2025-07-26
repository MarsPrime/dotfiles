#! /bin/bash

argument="$1"
storage_usage=$(df -h | grep /dev/nvme0n1p4 | awk '{ gsub(/%/, ""); print $5}')

memory_usage=$(free | grep Mem | awk '{printf "%.f", ($3/$2)*100}; gsub(/%/, "")')

swap_usage=$(free | grep Swap | awk '{printf "%.f", ($3/$2)*100}; gsub(/%/, "")')

storage_usage_image=
memory_usage_image=
swap_usage_image=


if [ "$argument" = "0" ]; then
     echo $(("$storage_usage" / 25))
elif [ "$argument" = "1" ]; then
     echo $(("$memory_usage" / 25))
else
     echo $(("$swap_usage" / 25))
fi
