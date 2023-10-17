#!/bin/bash

cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d , -f 7 | awk '{s+=$1; c+=1} END {print s; print s/c}'
