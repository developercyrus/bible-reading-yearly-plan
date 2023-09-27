jq -r '.[] | [.day, (.read | join(","))] | @csv' result.json > result.csv
