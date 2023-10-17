#!/bin/bash
mkdir "five"

for i in {1..5};do
    subdirectory="five/dir$i"
    mkdir "$subdirectory"

    for j in {1..4};do
	filename="$subdirectory/file$j"
 	lines=$(seq $j)
 	printf "%s\n" $lines > "$filename"
    done
done
