#!/bin/sh
set -e

# Download the pdfs
while read url; do
  test -f "documents/$(echo "$url" | cut -d/ -f7)" && continue
  [ "$url" = 'http://www2.mvn.usace.army.mil/ops/regulatory/pdf/JPN Plats.pdf' ] && continue
  echo $url
  (
    cd documents
    wget "${url}";
  )
  sleep 2s
done < spreadsheets/all.csv 
