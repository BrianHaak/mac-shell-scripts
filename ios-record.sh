#!/bin/bash

filename=$1

if [ -z $filename ] ; then
    filename="recording"
fi

xcrun simctl io booted recordVideo $filename.mp4
