#!/bin/bash

printf "\nBreaking down epub to txt in $PWD\n"
printf "["
for file in *.epub; do
	ebook-convert "$file" "$file.txt" >/dev/null
	printf "-"
done
printf "]\n"
printf "Finished converting epubs to txt\n\n"


exit 0
