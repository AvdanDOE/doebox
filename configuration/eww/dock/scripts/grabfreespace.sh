#!/usr/bin/env bash

case $1 in
    pcusd) df --output=pcent / | tail -n 1 | xargs ;;
    gsize) df --output=size / -h | tail -n 1 | xargs ;;
    gusd) df --output=used / -h | tail -n 1 | xargs ;;
esac