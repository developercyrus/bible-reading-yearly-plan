#!/bin/bash

jq -r '[.[] | (.read | join(","))]' result.json > notion.json