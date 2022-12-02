#!/usr/bin/env bash

ICONSET=("󰕿" "󰖀" "󰕾")

map() {
    local x=$1
    local in_min=$2
    local in_max=$3
    local out_min=$4
    local out_max=$5

    echo $(( (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min ))
}

LEVEL=`map $(pamixer --get-volume) 1 100 1 3`

echo ${ICONSET[$LEVEL]}


#!/usr/bin/env bash

ICONSET=("󰕿" "󰖀" "󰕾")
VOLUME=`pamixer --get-volume`
INDEX=$((VOLUME * 3 / 100))

if [ "$INDEX" -ge 3 ]; then
	INDEX=2
fi

echo ${ICONSET[$INDEX]}