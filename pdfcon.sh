#!/bin/bash

for file in *.pdf; do
	ebook-convert "$file" "$file.txt"
done

exit 0
