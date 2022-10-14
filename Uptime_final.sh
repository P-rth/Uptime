#!/bin/bash

up=$(cat /proc/uptime)
read a b <<< "$up"
printf -v aint %.0f "$a"

sec="$(($aint % 60))"
min="$(( ($aint / 60) % 60  ))"
hours="$(( ($aint / 3600) % 24  ))"
days="$(($aint / 86400))"

echo "$days:$hours:$min:$sec"
