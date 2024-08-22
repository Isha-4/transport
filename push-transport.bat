@echo off
REM Navigate to the directory where your Git repository is located (current directory)
cd /d "%~dp0"

REM Pull the latest changes from the remote repository
git pull origin main

REM Add all changes to the staging area
git add .

REM Get the PC name and current timestamp
setlocal
set "PC_NAME=%COMPUTERNAME%"
set "TIMESTAMP=%DATE% %TIME%"
set "COMMIT_MSG=%PC_NAME% - %TIMESTAMP%"

REM Commit the changes with the message
git commit -m "%COMMIT_MSG%"

REM Push the changes to the remote repository
git push origin main

REM Pause to view the results
pause
