#!/bin/bash

# Specify the extenstions folder path
folder_path="stable-diffusion-webui/extensions"

# Custom function to perform git pull, any changes will be stashed and restored.
perform_git_pull() {
    # Navigate to the folder
    cd "$1"
    
    # Check if the folder is a Git repository
    if [ -d ".git" ]; then
        echo "Performing 'git pull' in: $1"
        git stash
        git pull
        git stash pop
        echo "--------------------------"
    else
        echo "Skipping non-Git folder: $1"
        echo "--------------------------"
    fi
    
    # Return to the original folder
    cd - >/dev/null
}

perform_git_pull "stable-diffusion-webui"

for folder in "$folder_path"/*; do
    # Check if the current item is a directory
    if [ -d "$folder" ]; then
        
        perform_git_pull "$folder"
    fi
done
