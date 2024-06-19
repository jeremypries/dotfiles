#!/bin/bash

# TOPPROC=$(ps axo "%cpu,ucomm" | sort -nr | tail +1 | head -n1 | awk '{printf "%.0f%% %s\n", $1, $2}' | sed -e 's/com.apple.//g')
# TOPMEM=$(ps axo "rss" | sort -nr | tail +1 | head -n1 | awk '{printf "%.0fMB %s\n", $1 / 1024, $2}' | sed -e 's/com.apple.//g')
# MEM=$(echo $TOPMEM | sed -nr 's/([^MB]+).*/\1/p')
MEM=$(ps -caxm -orss= | awk '{ sum += $1 } END { printf "%.1f GB\n", sum/1024/1024 }')
sketchybar -m --set $NAME label="$MEM"
