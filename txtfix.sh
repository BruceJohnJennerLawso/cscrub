#!/bin/bash

if [ -z "$1" ]
	then
		printf "\nScrubbing bad characters in txt files of $PWD\n"
		printf  "["
		for file in *.txt; do
			python $HOME/bin/py/cscrub.py "$file"
			printf "."
		done
		printf "]\n"
		printf "Finished fixing characters\n\n"
else

	printf "\nScrubbing bad characters in txt files of $1\n"
	printf  "["
	for file in "$1"/*.txt; do
		python $HOME/bin/py/cscrub.py "$file"
		printf "."
	done
	printf "]\n"
	printf "Finished fixing characters\n\n"
fi


exit 0
