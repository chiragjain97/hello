#! /bin/bash

git diff main | grep -n -l -E  "android:id*|android:contentDescription." > /Users/chirag.jain_rr/Desktop/test.txt

git add .

git commit -m "Pushed to Remote at"

git push 

osascript -e 'display notification "pushed to remote repository" with title "SUCCESS"'