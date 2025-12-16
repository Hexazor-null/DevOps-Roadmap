#!/bin/bash

INPUT="$1"
LOGS="/home/m4rz0/DevOps/self/logs/monitor.log"

if ! systemctl is-active --quiet "$INPUT"; then
	echo "$(date "+%Y-%m-%d %H-%M-%S") $1 is DOWN" >> "$LOGS"
else
	echo "$(date "+%Y-%m-%d %H-%M-%S") $1 is UP" >> "$LOGS"
fi
