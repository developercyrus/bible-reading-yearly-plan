#!/bin/bash

jq -r '.[] | [.day, (.read | join(","))] | @csv' result.json > result.csv

file="result.csv"
{
ed -s "$file" <<EOF
1
i
day,read
.
wq
EOF
} > /dev/null