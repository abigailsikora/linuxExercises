#!/bin/bash                                                                                                                                                   

if [[ $# -ne 2 ]]; then # Recall: "-ne" checks integer inequality.                                                                                            
echo "usage: $0 <column> [file.csv]" 1>&2 # write error message to stderr (below)                                                                             
exit 0
fi

cat $2 | cut -d , -f $(($1 + 1)) | tail -n +2 | { sum=0; c=0; while read n; do sum=$(echo "scale=6; $sum + $n" | bc) ; c=$(($c + 1)); done; echo $(echo "scal\
e=6; $sum / $c" | bc); }
