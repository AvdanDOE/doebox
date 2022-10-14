#!/usr/bin/env bash

playerctl metadata mpris:artUrl | sed 's/.*base64//' | base64 -di > ./assets/cover.png | echo "./assets/cover.png"