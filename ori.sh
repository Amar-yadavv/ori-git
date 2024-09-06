#!/bin/bash

# Define the base directory for projects
base_dir="projects"

# Check if the base directory exists
if [ ! -d "$base_dir" ]; then
  echo "Base directory $base_dir does not exist."
  exit 1
fi

# Loop through each project directory in the base directory
for project in "$base_dir"/*; do
  # Check if it's a directory
  if [ -d "$project" ]; then
    oriserve_dir="$project/oriserve"
    
    # Check if the oriserve directory exists within the project directory
    if [ -d "$oriserve_dir" ]; then
      # Create a file inside the oriserve directory
      file_path="$oriserve_dir/file.txt"
      echo "Creating file in $oriserve_dir"
      touch "$file_path"
      echo "This is a file in the oriserve folder." > "$file_path"
    fi
  fi
done

echo "Script completed."
