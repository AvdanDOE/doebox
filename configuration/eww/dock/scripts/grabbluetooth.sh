#!/usr/bin/env bash

STATUS=`bluetoothctl show | awk -F 'Powered: ' '{print $2}' | tr -d " \t\n"`

if [ "$STATUS" == "yes" ]; then echo "󰂯"; else echo "󰂲"; fi