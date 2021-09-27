#! /bin/bash

path=/Users/chirag.jain_rr/Desktop

git diff main > $path/test1.txt

git diff main | grep -n -E "diff --git*|android:id*|android:contentDescription." > $path/test.txt

changes=`cat $path/test.txt | egrep -iv 'diff --git' | wc -l`

echo "Number of changes: $changes" >> $path/test.txt

mail -s "Changes in Locators" "chirag.jain_rr@external.swiggy.in" < $path/test.txt

git add .

git commit -m "Pushed to Remote at"

git push 

osascript -e 'display notification "pushed to remote repository" with title "SUCCESS"'
