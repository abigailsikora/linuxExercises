#!/bin/bash
mkdir "five"

for i in {1..5};do
    subdirectory="five/dir$i"
    mkdir "$subdirectory"

    for j in {1..4};do
	filename="$subdirectory/file$j"
	for k in $(seq $j);do 
	    printf "%d\n" "$j">> "$filename"
	done
    done
done
