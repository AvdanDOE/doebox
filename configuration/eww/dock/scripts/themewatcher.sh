#!/usr/bin/env bash
tail -F ~/.config/cutefishos/theme.conf 2> /dev/null | sed -n 's/.*AccentColor=\([0-9]*\).*/\1/p'
