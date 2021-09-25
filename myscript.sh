#! /bin/bash

git diff main > /Users/chirag.jain_rr/Desktop/test.xml

git add .

git commit -m "Pushed to Remote at"

git push 

osascript -e 'display notification "pushed to remote repository" with title "SUCCESS"'