#!/bin/bash

# For creating a screen recording of an iOS simulator.
# 1. Launch simlulator
# 2. run script to start recording
# 3. kill script with Ctrl+C
# 4. file will be saved as recording.mp4 unless you pass in a filename as argument

filename=$1

if [ -z $filename ] ; then
    filename="recording"
fi

xcrun simctl io booted recordVideo $filename.mp4
