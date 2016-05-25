#!/bin/bash

if [ -z "$1" ]
	then
		printf "\nBreaking down epub to txt in $PWD\n"
		printf "["
		for file in ./*.epub; do
			ebook-convert "$file" "$file.txt" >/dev/null
			printf "-"
		done
		printf "]\n"
		printf "Finished converting epubs to txt\n\n"

else
	echo "Trying directory $1"
	##cd $1
	printf "\nBreaking down epub to txt in $1\n"
	printf "["
	for file in $1/*.epub; do
		ebook-convert "$file" "$file.txt" >/dev/null
		printf "-"
	done
	printf "]\n"
	printf "Finished converting epubs to txt\n\n"
fi

exit 0
