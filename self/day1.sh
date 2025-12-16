#!/bin/bash

INPUT="$1"
LOGS="$(PATH)" #-> change with your path

if ! systemctl is-active --quiet "$INPUT"; then
	echo "$(date "+%Y-%m-%d %H-%M-%S") $1 is DOWN" >> "$LOGS"
else
	echo "$(date "+%Y-%m-%d %H-%M-%S") $1 is UP" >> "$LOGS"
fi
