## 聖經《和合本》全年讀經表

## input, 總共 1,189 章
```bash 
raw.csv
```

## run by cli
```bash 
$ ./raw2plan.sh      # after day 270, read no. of chapter from 3 to 4, for notion import which is optional (input:raw.csv, output: plan.csv)
$ ./csv2json.sh      # convert to json for group_by day (input: plan.csv, output: plan.json)
$ ./result2json.sh   # result as json, for programmatic use (input: plan.json, output: result.json)
$ ./result2csv.sh    # result as csv, for presentation use (input: result.json, output: result.csv)
$ ./result2notion.sh # result as json, for notion column use (input result.json, output: notion.json)
```

## output
```bash 
result.csv
notion.json
```
