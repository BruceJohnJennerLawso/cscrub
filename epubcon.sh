#!/bin/bash

for file in *.epub; do
	ebook-convert "$file" "$file.txt"
done

exit 0
