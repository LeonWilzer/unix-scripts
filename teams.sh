#!/bin/sh

while [ true ]; do
pactl set-sink-input-mute $(pulsemixer --list-sinks | grep -Ew 'Music Player Daemon' | awk '{print $4}' | sed 's/,//' | sed 's/sink-input-//') 0
sleep 1s
done
