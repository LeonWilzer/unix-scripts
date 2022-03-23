#!/bin/sh

while IFS="" read -r p || [ -n "$p" ]
do
	USERNAME="$(echo "$p" | awk '{print $1}')"
	PASSWORD="$(echo "$p" | awk '{print $2}')"
	printf '%s\n' "$USERNAME"
	printf '%s\n' "$PASSWORD"
done < "$1"
