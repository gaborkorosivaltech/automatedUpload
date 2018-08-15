#!/bin/sh
psexec -u "nt authority\network service" -i "C:\windows\system32\WindowsPowerShell\v1.0\powershell.exe"

Push-Location $PSScriptRoot

$Filepath = 'C:\AutoGitTest'
$TimeAndDate = Get-Date -Format g
Get-ChildItem -Path $Filepath -Recurse

git add --all
git commit -am "$TimeAndDate"
git push

Pop-Location