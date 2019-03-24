#!/bin/bash

echo 'Initializing Repo? Y/N'
read ANSWER

if [ $ANSWER == y ] || [ $ANSWER == Y  ]
then

    echo 'Repository URL= '
    read REPOURL

    echo 'git remote add origin '$REPOURL

    echo "# README" >> README.md
    git init
    git add README.md
    git commit -m "first commit"
    git remote add origin $REPOURL
    git push -u origin master

else
    echo 'Commit= '
    read COMMIT
    git pull
    git add .
    git commit -m $COMMIT

    git push origin master
fi