#!/bin/bash
# Script generating commits
for (( i=$2; i >= 1; i-- ))
do

if [ $(($i % 2)) -eq 0 ]
    then
    echo "$1" >> $1
    else
    sed -i "$ d" test
    fi

    git add .
    date_commit=$(date +"%s" -d "$i day ago")
    GIT_COMMITTER_DATE="$date_commit" git commit -m "Change $1" --date "$date_commit"
done
