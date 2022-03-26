#!/bin/sh

while [ true ]; do
pactl set-sink-input-volume $(pulsemixer --list-sinks | grep -Ew 'Firefox' | awk '{print $4}' | sed 's/,//' | sed 's/sink-input-//') $1
sleep 1s
done
