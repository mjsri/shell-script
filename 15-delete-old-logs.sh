#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ] # ! denotes opposite
then
    echo -e "$R Source directory: $SOURCE_DIR does not exists. $N" # it will check source dir is available or not
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log") # it will go anf see in source dir with .log files more than 14 days

while IFS= read -r line # it will read line by line 
do
    echo "Deleting file: $line"  # if .log file is available in any line 
    rm -rf $line  # it will del .log if it is in any line
done <<< $FILES_TO_DELETE