#!/bin/sh
PKG=$(find update.d -type f | grep -v detect)
while IFS= read -r line; do
	echo -en "\e[1mUpdating $line... \e[0m"
	skip="0"
	if [[ -f "$line.detect" ]]; then
		sh $line.detect 2> /dev/null
		skip="$?"
	fi
	if [[ $skip == 0 ]]; then
		echo ""
		if sh -- "$line"; then
			echo -e "\e[1;32m$line updated\e[0m"
		else
			echo -e "\e[1;31mError updating $line\e[0m"
			exit 1
		fi < /dev/tty
	else
		echo -e "\e[1;33mskipped\e[0m"
	fi
done <<< $PKG

