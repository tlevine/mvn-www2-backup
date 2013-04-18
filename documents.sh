#!/bin/sh
set -e

# Download the pdfs
while read url; do
  (
    cd documents
    wget "${url}";
  )
  sleep 2s
done < spreadsheets/all.csv 

