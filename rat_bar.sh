#!/bin/bash

exec ratbar -i "date +'%a %b %d %H:%M'" -i "uptime | sed 's/.*up \([^,]*\), .*/\1/'" -i "echo 'CPU: $(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"})'" -i "echo 'Mem: $(free -h | awk '/Mem:/ {print $310" -b "#282a36" -F "#f8f8f2" &