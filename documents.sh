#!/bin/sh
set -e

# Download the pdfs
while read url; do
  echo $url
  test -f "documents/$(echo "$url" | cut -d/ -f7)" && continue
  (
    cd documents
    wget "${url}";
  )
  sleep 2s
done < spreadsheets/all.csv 

