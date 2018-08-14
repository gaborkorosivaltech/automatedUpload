#!/bin/sh
Push-Location $PSScriptRoot

$Filepath = 'C:\AutoGitTest'
$TimeAndDate = Get-Date -Format g
Get-ChildItem -Path $Filepath -Recurse

git add --all
git commit -am "$TimeAndDate"
git push

Pop-Location