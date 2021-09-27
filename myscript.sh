#! /bin/bash

git diff main > /Users/chirag.jain_rr/Desktop/test1.txt

git diff main | grep -n -E "diff --git*|android:id*|android:contentDescription." > /Users/chirag.jain_rr/Desktop/test.txt

number_of_lines=`cat /Users/chirag.jain_rr/Desktop/test.txt | wc -l`

echo "Number of lines: $number_of_lines" >> /Users/chirag.jain_rr/Desktop/test.txt

git add .

git commit -m "Pushed to Remote at"

git push 

osascript -e 'display notification "pushed to remote repository" with title "SUCCESS"'
