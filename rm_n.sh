#!/bin/bash
echo "usage: $0 <dir> <n> that removes all files in directory $1 larger than $2 bytes" 1>&2
find $1 -type f -size +$2b -delete
