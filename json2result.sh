jq '.data | group_by(.yearly) | map({day: .[0].yearly, read: map(.bookAndChapter)})' plan.json > result.json