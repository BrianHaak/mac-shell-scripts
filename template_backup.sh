#!/bin/sh

# source folder, to be backed up
source=""

# destination folder, where to store the backups
dest=""

# if only backing up one file, indicate it here, else all folder contents will be backed up
# file=""

# delete old backups?
# delete="yes"


datetime=`date +%F-%H%M`

if [ -z "$file" ]
then 
# no file indicated
tar -zcf "$dest/$datetime.tar.gz" "$source"
else
# only back up file
tar -zcf "$dest/$datetime-$file.tar.gz" "$source/$file"
fi


if ["$delete"]
then 
# delete old backups
# delete any backups more than 30 days old, except for the last backup per month for last 12 months
# TODO: implement

fi