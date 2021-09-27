#! /bin/bash

path=`pwd`

#git diff main > $path/test1.txt

git diff main | grep -n -E "diff --git*|android:id*|android:contentDescription." > $path/test.txt

number_of_lines=`cat $path/test.txt |egrep -iv "git" | wc -l`

echo "Number of lines: $number_of_lines" >> $path/test.txt

git add .

git commit -m "Pushed to Remote at"

git push 

osascript -e 'display notification "pushed to remote repository" with title "SUCCESS"'
