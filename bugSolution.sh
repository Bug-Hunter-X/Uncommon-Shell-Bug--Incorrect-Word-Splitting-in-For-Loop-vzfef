#!/bin/bash

# This script demonstrates the solution to the word splitting problem.

file_to_process="path/to/my/file.txt"

# Correct approach using 'read' to avoid word splitting issues
while IFS= read -r -d $'\n' word; do
  echo "Processing word: $word"
done < "$file_to_process"