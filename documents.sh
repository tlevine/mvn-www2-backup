#!/bin/sh
set -e

# Download the pdfs
while read url; do
  (
    cd documents
    wget "${url}";
  )
done < spreadsheets/all.csv 

