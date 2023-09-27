#!/bin/bash

input_file=plan.csv
output_file=plan.json


jq -Rsn '
  {"data":
    [inputs
     | . / "\n"
     | (.[] | select(length > 0) | . / ",") as $input
     | {"index": $input[0] | tonumber, "book": $input[1], "chapter": $input[2] | tonumber, "bookAndChapter": $input[3], "yearly": $input[4] | tonumber}]}
' <(sed '1d' $input_file) > $output_file