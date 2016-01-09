#!/bin/bash

NUM_PAGES=$(for PDF_FILE in *.pdf; do
    pdfinfo $PDF_FILE | grep Pages | sed 's/[^0-9]*//'
  done | awk '{s+=$1} END {print s}')

echo "currently $NUM_PAGES pdf pages in total"