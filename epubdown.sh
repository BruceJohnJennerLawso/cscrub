#!/bin/bash

if [ -z "$1" ];
	then
		for d in *; do
			if [[ -d "$d" ]]; then
				echo "$d"
				printf "$PWD/$d"
				$HOME/bin/epubcon.sh "$d"
				epubdown.sh "$d" 1
			fi
		done
else
	cd "$1"
	for d in *; do
		if [[ -d "$d" ]]
			then
				printf "$PWD/$d"
				$HOME/bin/epubcon.sh "$PWD/$d"
				for i in $(seq 1 $2); do
					printf " - "
				done
				printf "$d\n "
				depth=$2
				((depth++))
				epubdown.sh "$d" $depth
		fi
	done
fi

exit 0
