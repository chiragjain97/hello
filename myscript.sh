#! /bin/bash

git diff main | grep "a\/*|android:id*|android:contentDescription." > /Users/chirag.jain_rr/Desktop/test.txt

git diff main | grep "b\/*|android:id*|android:contentDescription." >> /Users/chirag.jain_rr/Desktop/test.txt

#git diff main | grep -n -E "android:id*|android:contentDescription." >> /Users/chirag.jain_rr/Desktop/test.txt

#git diff main | grep -n -E  "android:id*|android:contentDescription." >> /Users/chirag.jain_rr/Desktop/test.txt

git add .

git commit -m "Pushed to Remote at"

git push 

osascript -e 'display notification "pushed to remote repository" with title "SUCCESS"'