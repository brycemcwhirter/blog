#!/bin/bash

# Check if at least one directory argument was provided
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <directory1> [directory2] ..."
    exit 1
fi

# Loop through all provided directory arguments
for DIR in "$@"; do
    # Verify that the provided argument is a directory
    if [ ! -d "$DIR" ]; then
        echo "Error: '$DIR' is not a valid directory. Skipping."
        continue
    fi

    echo "Processing directory: $DIR"

    # Loop through JPG and MOV files in the specified directory
    for FILE in "$DIR"/*.{JPG,MOV}; do
        # Skip if no matching files exist
        [ -e "$FILE" ] || continue

        # Get creation time using stat (macOS-specific command)
        CREATION_DATE=$(stat -f "%SB" -t "%Y-%m-%d_%H-%M-%S" "$FILE")
        
        # Extract file extension
        EXT="${FILE##*.}"
        
        # Define new filename
        NEW_NAME="${CREATION_DATE}.${EXT}"
        
        # Rename the file
        mv "$FILE" "$DIR/$NEW_NAME"
        echo "Renamed '$FILE' to '$NEW_NAME'"
    done
done
