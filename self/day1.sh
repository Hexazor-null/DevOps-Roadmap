#!/bin/bash

INPUT="$1"
LOGS="/var/log/monitor.log"

if ! systemctl is-active --quiet "$INPUT"; then
	echo "$(date "+%Y-%m-%d %H-%M-%S") $1 is DOWN" >> "$LOGS"
else
	echo "$(date "+%Y-%m-%d %H-%M-%S") $1 is UP" >> "$LOGS"
fi
