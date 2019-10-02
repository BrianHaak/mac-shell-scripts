#!/bin/bash

# For deleting folders named bin or obj
# 1. set constrainedPath variable below to parent folder of projets
# 2. Either cd to folder, or pass folder location into script as an argument
# 3. run script
#
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
