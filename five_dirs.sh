#!/bin/bash
mkdir "five"

for j in {1..4};do
	filename="$subdirectory/file$j"
	lines=$(seq $j) 
	printf "%s\n" $lines > "$filename"
	for k in $(seq $j);do 
	    printf "%d\n" "$j">> "$filename"
	done
    done
done
