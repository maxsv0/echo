#!/bin/bash

echo "Starting.."

# Default values
path="${1:-./src}"
maxdepth="${2:-5}"

for f in $(find "$path" -maxdepth "$maxdepth" -type f); do
  file=$(basename "$f")
  printf "%s\n" "FILENAME: $file" >> echo.txt
  printf "%s\n" "$(<"$f")" >> echo.txt
  printf "\n\n" >> echo.txt
done

echo "Done!"