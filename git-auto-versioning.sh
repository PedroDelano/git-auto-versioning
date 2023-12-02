#!/bin/bash

# Check if git status is clean
# if it isn't, then add all files and commit with a timestamp
function git_update {
    # Check if folder is provided
    if [[ -z $1 ]]; then
        echo "No folder provided"
        return
    fi

    # Go to folder
    cd $1

    # check if folder is a git repo
    if [[ ! -d .git ]]; then
        echo "Not a git repo"
        return
    fi

    if [[ $(git status --porcelain) ]]; then
        echo "Changes detected: Committing and pushing..."
        git add .
        git commit -m "$(date)"
        git push origin master
    fi
}

git_update $1
