#!/bin/bash
# findout if files in A dicrectory are included in B dicrectory as well

for entry in /path/to/dicrectory/*
do
  FILENAME=$(basename "$entry")
  if [ ! -e /path/to/another/dicrectory/"$FILENAME" ]; then 
    echo "$FILENAME does not exist"
  fi
done