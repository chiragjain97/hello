#! /bin/bash

git add .

DATE=$(date)

git diff main


git commit -m "Changes made on $DATE"

git push 

osascript -e 'display notification "pushed to remote repository" with title "SUCCESS"'