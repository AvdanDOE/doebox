#!/usr/bin/env bash

if [ $1 == "up" ]; then pamixer --increase 5; else pamixer --decrease 5; fi