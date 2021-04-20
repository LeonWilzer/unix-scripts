#!/bin/sh

# Mimeapp script for adding torrents to the transmission daemon.

pgrep -x transmission-da >/dev/null || (transmission-daemon && notify-send "Starting transmission daemon...")

transmission-remote -a "$@" && notify-send -u low "Transmission-Deamon" "Torrent added."
