#!/bin/bash

# Script to generate a new reading markdown file
# Usage: ./new-reading.sh "Book Title" stars

if [ $# -ne 2 ]; then
    echo "Usage: $0 \"Book Title\" stars"
    echo "Example: $0 \"building a life worth living\" 3"
    exit 1
fi

book_title="$1"
stars="$2"

# Get today's date in YYYY-MM-DD format
today=$(date +%Y-%m-%d)

# Convert book title to lowercase with hyphens for filename
filename_title=$(echo "$book_title" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
filename="./_reading/${today}-${filename_title}.md"

# Capitalize each word for the display title
display_title=$(echo "$book_title" | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2))}1')

# Create the file with the template
cat > "$filename" << EOF
---
layout: reading
title:  "${display_title}"
author: ""
date:   ${today}
stars:  ${stars}
brief: ""
---

EOF

echo "Created: $filename"
