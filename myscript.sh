#! /bin/bash

git add .

DATE=$(date)

git diff main

git commit -m "Pushed to Remote at $Date"

git push 

osascript -e 'display notification "pushed to remote repository" with title "SUCCESS"'