@echo off
:: Step 1: Prompt for a commit message
set /p msg="Enter commit message: "

:: If you just press Enter, default to "Update"
if "%msg%"=="" set msg=Update

:: Step 2: Add all changes
git add .

:: Step 3: Commit with the provided message
git commit -m "%msg%"

:: Step 4: Push to the main branch
git push origin main

:: Success message
echo.
echo Project successfully updated on GitHub!
pause