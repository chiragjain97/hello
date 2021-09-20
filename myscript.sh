#! /bin/bash

git add .

diff -bur --ignore-all-space main


git commit -m "Pushed to Remote at"

git push 

osascript -e 'display notification "pushed to remote repository" with title "SUCCESS"'