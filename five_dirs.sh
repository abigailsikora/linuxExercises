#!/bin/bash
mkdir -p "five"

if [ ! -d "$five" ]
then
    echo "File creates successfully."
else
    echo "Cannot creat file"
fi

for i in {1..5};do
    subdirectory="five/dir$i"
    mkdir -p "$subdirectory"

    for j in {1..4};do
	filename="$subdirectory/file$j"
	lines=$(seq $j) 
	printf "%s\n" $lines > "$filename"
    done
done
