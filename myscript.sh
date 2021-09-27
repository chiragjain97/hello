#! /bin/bash

path=/Users/chirag.jain_rr/Desktop

git diff main | grep -n -E "diff --git*|android:id*|android:contentDescription." > $path/test.txt

number_of_lines=`cat $path/test.txt | egrep -iv 'diff --git' | wc -l`

changes=$((number_of_lines / 2))

echo "Number of lines: $changes" >> $path/test.txt

git add .

git commit -m "Pushed to Remote at"

git push 

osascript -e 'display notification "pushed to remote repository" with title "SUCCESS"'
