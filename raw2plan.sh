#!/bin/bash

input_file=raw.csv
output_file=plan.csv

{
  printf "%s%s\n" "$(head -n 1 $input_file)" ",bookAndChapter,yearly"
  sed 1d "$input_file" | while read line; do
    A=$(echo "$line" | cut -d, -f1)
    B=$(echo "$line" | cut -d, -f2)
    C=$(echo "$line" | cut -d, -f3)
    printf "%s,%s,%s\n" "$line" "$B$C" "$(if [[ $A -le 810 ]]; then echo $(( (A + 2) / 3 )); else echo $(( 270 + (A - 810 + 3) / 4 )); fi)"
  done 
} > "$output_file"