#!/bin/bash

OWNER="naqeebghazi"
REPO="darey.GitProject1"
PATH_TO_DIR="images"
OUTPUT_FILE="urls.txt"

# Fetch files from GitHub API
FILE_INFOS=$(curl -s "https://api.github.com/repos/$OWNER/$REPO/contents/$PATH_TO_DIR")

# Parse JSON and generate URLs, then write to file
echo "$FILE_INFOS" | jq -r ".[] | \"https://raw.githubusercontent.com/$OWNER/$REPO/main/\(.path)\"" > "$OUTPUT_FILE"

echo "URLs written to $OUTPUT_FILE"
