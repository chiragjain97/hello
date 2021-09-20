#! /bin/bash

git add .

DATE=$(date)

git -c core.whitespace=-trailing-space,-indent-with-non-tab,-tab-in-indent diff -U0 --word-diff-regex='[^[:space:]]'


git diff main

git commit -m "Changes made on $DATE"

git push 

osascript -e 'display notification "pushed to remote repository" with title "SUCCESS"'