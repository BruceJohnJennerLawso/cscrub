#!/bin/bash

printf "\nScrubbing bad characters in txt files of $PWD\n"
printf  "["
for file in *.txt; do
	python $HOME/bin/py/cscrub.py "$file"
	printf "."
done
printf "]\n"
printf "Finished fixing characters\n\n"
exit 0
