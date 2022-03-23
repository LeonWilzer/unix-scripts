#!/bin/sh
transmission-remote -t "$(transmission-remote -l | grep -E "archlinux-[0-9]{4}\.[0-9]{2}\.[0-9]{2}-x86_64\.iso" | awk '{print $1}')" --remove-and-delete

transmission-remote --add "$(curl https://archlinux.org/download/ | grep -oP "magnet:\?xt=urn:btih:.{40}&amp;dn=archlinux-[0-9]{4}\.[0-9]{2}\.[0-9]{2}-x86_64\.iso")"
