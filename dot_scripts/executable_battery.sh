#!/usr/bin/env sh

cat /sys/class/power_supply/BAT1/capacity | sed 's/$/%/'
