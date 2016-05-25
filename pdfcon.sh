#!/bin/bash

printf "\nBreaking down pdf to txt in $PWD\n"
printf "["
for file in *.pdf; do
	ebook-convert "$file" "$file.txt" >/dev/null
	printf "*"
done
printf "]\n"
printf "Finished converting all pdf files to txt\n\n"

exit 0
