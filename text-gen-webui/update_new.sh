#!/bin/bash

# Specify the extenstions folder path
folder_path="extensions"

# Custom function to perform git pull, any changes will be stashed and restored.
install_extension() {
    # Navigate to the folder
    cd "$1"

    echo handling "$1"
    # Check if the folder is a Git repository
    python -m pip install -r requirements.txt
    
    # Return to the original folder
    cd - >/dev/null
}

for folder in "$folder_path"/*; do
    # Check if the current item is a directory
    if [ -d "$folder" ]; then
        
        install_extension "$folder"
    fi
done
