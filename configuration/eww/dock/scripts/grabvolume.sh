#!/usr/bin/env bash

ICONSET=("󰕿" "󰖀" "󰕾")
VOLUME=`pamixer --get-volume`
INDEX=$((VOLUME * 3 / 100))

if [ "$INDEX" -ge 3 ]; then
	INDEX=2
fi

echo ${ICONSET[$INDEX]}