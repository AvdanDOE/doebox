#!/usr/bin/env bash

[ $(cat /sys/class/net/w*/operstate) = down ] && echo 󰤮 && exit
echo 󰤨