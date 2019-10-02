#!/bin/bash

# source: https://www.joesauve.com/remove-obj-and-bin-folders-via-os-x-finder/

constrainedPath="$HOME/Code"
directory=$1

if [ -z $directory ] ; then
    directory=$PWD
fi

if [[ $directory != *$constrainedPath* ]]; then
    echo "Invalid path. The allowable path is constrained to $constrainedPath (and subdirectories) for safety"
    exit 1
else
    foldersToRemove=$(find $directory -type d \( -name bin -o -name obj \))
    if [[ $foldersToRemove != "" ]]; then
        echo "Removing folders:"
        echo "$foldersToRemove"
        rm -rf $foldersToRemove
    else
        echo "No bin or obj folders to remove"
    fi
fi
