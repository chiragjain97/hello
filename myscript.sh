#! /bin/bash

git diff main | grep -E 'android:contentDescription*|android:id.' >> /Users/chirag.jain_rr/Desktop/test.txt

git add .

git commit -m "Pushed to Remote at"

git push 

osascript -e 'display notification "pushed to remote repository" with title "SUCCESS"'