#!/bin/bash

for file in *.txt; do
	python cscrub.py "$file"
done

exit 0
