#!/bin/sh
$Filepath = 'C:\AutoGitTest'
Get-ChildItem -Path $Filepath -Recurse
git add --all
git commit -am "Regular auto-commit"
git push --set-upstream origin master