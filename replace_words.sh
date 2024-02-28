#!/bin/bash
# This script replaces a specific word in a specific file 
# Use: bash replace_words.sh <file> <old> <new>

# Check if all arguments are provided
if [ $# -ne 3 ]; then
  echo "Usage: $0 <folder_path> <old_word> <new_word>"
  exit 1
fi

# Get the folder path, old word, and new word from arguments
folder_path="$1"
old_word="$2"
new_word="$3"

# Use find to iterate through files and use sed for replacement
find "$folder_path" -type f -exec sed -i "s/$old_word/$new_word/g" {} \;

# Print a success message
echo "Successfully replaced '$old_word' with '$new_word' in files under '$folder_path'"
