#! /bin/bash

git diff main | grep -E 'android:id*|android:contentDescription.' 

git add .

git commit -m "Pushed to Remote at"

git push 

osascript -e 'display notification "pushed to remote repository" with title "SUCCESS"'